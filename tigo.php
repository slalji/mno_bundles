<?php

class Tigo {

	var $dbcon;
	var $msisdn;
	var $lang;
	var $transId;
	var $bundle;
	var $is_connected = false;
	var $url = 'http://192.168.1.14:7300/cheka/request';

	function db_connect(){
		$this->dbcon = mysqli_connect('127.0.0.1','root','roots','selcom_bundles_tigo');

		if(mysqli_connect_errno()) echo "Error: Unable to connect to MySQL." . PHP_EOL;
	}

	function log_file($append, $reference, $dump){
		$path = "./logs/" . date("Ymd") . "/";

		if(!is_dir($path)){
			@mkdir($path,null,true);
		}

		$filename = $path . $append . date('His') . "_" . $reference . ".xml";
		$fh = fopen($filename, "w") or die("File writer error...");
		fwrite($fh, $dump);
		fclose($fh);
	}

	function createXML($service){
		if ($service == "validate") {
			$providerName = 'cheka/validate';
			$req = "<chekaValidate><langCode>$this->lang</langCode><transactionId>$this->transId</transactionId><startTime>".date('Y-m-d H:i:s')."</startTime><amsisdn>$this->msisdn</amsisdn><transactionType><normalPurchase><bundleUssdId>$this->bundle</bundleUssdId></normalPurchase></transactionType></chekaValidate>";
		} elseif ($service == "query") {
			$providerName = "cheka/queryTransaction";
			$req = "<chekaQueryTrans><transactionId>$this->transId</transactionId></chekaQueryTrans>";
		} elseif ($service == "balance") {
			$providerName = "cheka/balanceCheck";
			$req = "<chekaBalanceCheck><msisdn>$this->msisdn</msisdn></chekaBalanceCheck>";
		} elseif ($service == "bundle") {
			$providerName = "cheka/bundleCatalogue";
			$req = "<chekaBundleCatalogue><key>vodafasta</key></chekaBundleCatalogue>";
        }
        elseif($service == 'ProcessPOSRequest'){
           /* Initialize webservice with your WSDL */
            $client = new SoapClient("http://10.222.15.34/POSWebService/ProcessPOSRequest.svc?wsdl");

            /* Fill your Contact Object */
            
            $objRequest = new objRequest("111", "255716402861","","aboutwork","sameer","en","","255716402861","day_megabox","2580","");

            /* Set your parameters for the request */
            $params = array(
            "objRequest" => $objRequest/*,
            "description" => "Barrel of Oil",
            "amount" => 500,*/
            );

            /* Invoke webservice method with your parameters, in this case: Function called ProcessPOSRequest with params */
            $response = $client->__soapCall("ProcessPOSRequest", array($params));

            /* Print webservice response */
            var_dump($response);
        }
		$xml = "<message><header><timestamp>".date('Y-m-d H:i:s')."</timestamp><int_guid></int_guid><reply_address></reply_address><ttl>0</ttl><echo_request>true</echo_request><consumer><name>internal</name><tid></tid><sid></sid></consumer><provider><name>$providerName</name><tid></tid><sid></sid></provider></header><request><username>selcom</username><password>sdn*M=*P5V9#v_z</password><request>$req</request></request></message>";
		return $xml;
	}

	function getResponse($fields){
		$ch = curl_init($this->url);
		$opts = array(
			CURLOPT_HTTPHEADER=> array(
						"Content-Type: application/xml",
						"Accept: text/xml",
						"Cache-Control: no-cache"
						),
			CURLOPT_POST=> 1,
			CURLOPT_POSTFIELDS=> $fields,
			CURLOPT_RETURNTRANSFER=> 1,
			CURLOPT_SSL_VERIFYHOST=> 0,
			CURLOPT_SSL_VERIFYPEER=> 0,
			CURLOPT_VERBOSE=> true,
		);

		curl_setopt_array($ch, $opts);
		$response = curl_exec($ch);
		curl_close($ch);

		return $response;
	}

	function chekaValidate($service){
		$this->msisdn = $_REQUEST['msisdn'];
		$this->lang = $_REQUEST['lang'];
		$this->transId = $_REQUEST['transid'];
		$this->bundle = $_REQUEST['bundle'];
		$xml_request = $this->createXML($service);
		$response = $this->getResponse($xml_request);
		$this->log_file($service."_RESP", $this->transId, $response);
		$xml = simplexml_load_string($response);
		$json  = json_encode($xml);
		$xmlArr = json_decode($json, true);
		if (array_key_exists("response", $xmlArr)){
			$packages = $xmlArr['response']['chekaValidate']['transactionType']['normalPurchase']['packages'];
			foreach($package as $packages){
				echo "000|\n";
				print_r($package['name']);
			}
		} else {
			$result = $xmlArr['header']['result'];
			$code = $result['code'];
			$description = $result['description'];
			$details = $result['details'];
			echo $code."|".$description."|".$details;
		}
	}

	function queryTransaction($service){
		$this->transId = $_REQUEST['transid'];
		$xml_request = $this->createXML($service);
		$response = $this->getResponse($xml_request);
		$this->log_file($service."_RESP", $this->transId, $response);
		$xml = simplexml_load_string($response);
		$json  = json_encode($xml);
		$xmlArr = json_decode($json, true);
		if (array_key_exists("response", $xmlArr)){
			$chekaQueryTrans = $xmlArr['response']['chekaQueryTrans'];
			$result = $chekaQueryTrans['transactionState'];
			$status = $chekaQueryTrans['transactionFound'];
			if ($result === -1 && $result === 3){
				//Unknown 999, $status
				echo "999|".$status;
			}else if($result === 0){
				//Success 000, $status
				echo "000|".$status;
			}else if($result === 1){
				//Pending, $status
				echo "PENDING|".$status;
			}else if($result === 2){
				//Failed 103, $status
				echo "103|".$status;
			}
		} else {
			$result = $xmlArr['header']['result'];
			$code = $result['code'];
			$description = $result['description'];
			$details = $result['details'];
			echo $code."|".$description."|".$details;
		}
	}

	function getBundles($service){
		$xml_request = $this->createXML($service);
		$response = $this->getResponse($xml_request);
		$xml = simplexml_load_string($response);
		$json  = json_encode($xml);
		$xmlArr = json_decode($json, true);
		$bundleCategories = $xmlArr['response']['chekaBundleCatalogue']['bundleCategories'];
		if ($bundleCategories != null)
			$this->db_connect();
		foreach ($bundleCategories as $key => $value) {
			foreach ($value as $key_1 => $value_1) {
				$cat_name_en = $value_1['name'][0]['text'];
				$cat_name_sw = $value_1['name'][1]['text'];

				if ($cat_name_en === "Vodafasta Internet Bundles"){
					$util_code = "VODA_BNDL";
				} else if ($cat_name_en === "Cheka Bundles"){
					$util_code = "VODA_CHEKA";
				} else if ($cat_name_en === "RED RLX"){
					$util_code = "VODA_RED";
				} else if ($cat_name_en === "PINDUAPINDUA"){
					$util_code = "VODA_PP";
				}

				foreach ($value_1['bundleCategories'] as $key_2 => $value_2) {
					foreach ($value_2 as $key_3 => $value_3) {
						$cat_name_1 = $value_3['name'][0]['text'];
						$cat_code_1 = strtoupper(trim($cat_name_1));

						$res = mysqli_query($this->dbcon,"INSERT INTO category(utilitycode, name, name_en, name_sw, categorycode, sequence) VALUES ('$util_code', '$cat_name_en', '$cat_name_en', '$cat_name_sw', '$cat_code_1', '1')");
						if ($res) {
							echo "New record created successfully\n";
						} else {
							echo "Error: " . mysqli_error($this->dbcon)."\n";
						}

						if (array_key_exists("bundles", $value_3)) {
							$check_arr = $value_3['bundles']['bundle'];
							if (isset($check_arr[0])){
								$next_arr = $check_arr;
							} else {
								$next_arr = $value_3['bundles'];
							}
							foreach ($next_arr as $key_4 => $value_4) {
								$sequence = $key_4 + 1;
								$days = $value_4['days'];
								$amount = $value_4['cost'];
								$itemcode = $value_4['ussdCode'].'*'.$value_4['ussdId'];
								$name_en = $value_4['name'][0]['text'];
								$name_sw = $value_4['name'][1]['text'];
								$description = $value_4['description'][0]['text'];

								$res = mysqli_query($this->dbcon,"INSERT INTO menuitem(utilitycode, name, name_en, name_sw, description, categorycode, amount, days, itemcode, sequence) VALUES
									('$util_code', '$name_en', '$name_en', '$name_sw', '$description', '$cat_code_1', '$amount', '$days', '$itemcode', $sequence)");
								if ($res) {
									echo "New record created successfully\n";
								} else {
									echo "Error: " . mysqli_error($this->dbcon)."\n";
								}
							}
						} else {
							foreach ($value_3['bundleCategories']['bundleCategory'] as $key_4 => $value_4){
								foreach ($value_4 as $key_5 => $value_5){
									if ($key_5 === "name") {
										$util_name = strtoupper($value_5[0]['text']);
									} else if ($key_5 === "bundles") {
										foreach ($value_5['bundle'] as $key_6 => $value_6){
											$sequence = $key_6 + 1;
											$days = $value_6['days'];
											$amount = $value_6['cost'];
											$itemcode = $value_6['ussdCode'].'*'.$value_6['ussdId'];
											$name_en = $value_6['name'][0]['text'];
											$name_sw = $value_6['name'][1]['text'];
											$description = $value_6['description'][0]['text'];

											$res = mysqli_query($this->dbcon, "INSERT INTO menuitem(utilitycode, name, name_en, name_sw, description, categorycode, amount, days, itemcode, sequence) VALUES ('$util_name', '$name_en', '$name_en', '$name_sw', '$description', '$cat_name_1', '$amount', '$days', '$itemcode', '$sequence')");
											if ($res) {
												echo "New record created successfully\n";
											} else {
												echo "Error: " . mysqli_error($this->dbcon)."\n";
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}

	}

	function getBalance($service){
		$this->msisdn = $_REQUEST['msisdn'];
		$xml_request = $this->createXML($service);
		$response = $this->getResponse($xml_request);
		$xml = simplexml_load_string($response);
		$json  = json_encode($xml);
		$xmlArr = json_decode($json, true);
		if (array_key_exists("response", $xmlArr)){
			$result = $xmlArr['response']['chekaBalanceCheck']['bundles'];
			echo "000|\n";
			print_r($result);
		} else {
			$result = $xmlArr['header']['result'];
			$code = $result['code'];
			$description = $result['description'];
			$details = $result['details'];
			echo $code."|".$description."|".$details;
		}
	}


	function import(){
		$con = $this->db_connect();
		$filename="tigo.csv";
		$file = fopen($filename, "r");
		$this->db_connect();
		/**
		 *  delete table upload new data
		 * */ 
		mysqli_query($this->dbcon,'TRUNCATE TABLE catalog;');
				while (($getData = fgetcsv($file, 10000, ",")) !== FALSE) {
	
				
				$sql = "INSERT into catalog (Appendant_ID,Package_name,Billing_Category,Com_Category,OCS_Name,Location,Price_to_customer,Deducted_Amount_from_wallet,Profit,Short_Code,Validity) 
					VALUES ('$getData[0]','$getData[1]','$getData[2]','$getData[3]','$getData[4]','$getData[5]','$getData[6]','$getData[7]','$getData[8]','$getData[9]','$getData[10]')";
					$result = mysqli_query($this->dbcon, $sql);
					
					if(!isset($result))
					{
						echo "Invalid File:Please Upload CSV File";
						die(print_r($sql));		
					}
					else {
						//echo "CSV File has been successfully Imported<br>".$sql."<p>";
						
					}
				}
				 echo "CSV File has been successfully Imported<br>";
				fclose($file);	
	}
	function build_bundle_category(){
		$this->db_connect();
		/**
		 *  delete table upload new data
		 * */ 
		mysqli_query($this->dbcon,'TRUNCATE TABLE tigo_category;');

		$sql ="SELECT Package_name, OCS_Name, Validity FROM `catalog` where 1 group BY Validity";
		$result = mysqli_query($this->dbcon, $sql);
		// Fetch all
		$rows = mysqli_fetch_all($result,MYSQLI_ASSOC);
		foreach($rows as $row){
			$utilitycode = $row['Package_name'];
			$name = $row['OCS_Name'];
			$cat_code_1 = $row['Validity'];
			$res = mysqli_query($this->dbcon,"INSERT INTO tigo_category(utilitycode, name, name_en, name_sw, categorycode, sequence) VALUES ('$utilitycode', '$name', '$name', '$name', '$cat_code_1', '1')");
			echo $utilitycode."<p>";											
		}
		echo "built cat";

	}
}

$tigo = new Tigo();

$service = $_REQUEST['service'];

$tigo->db_connect();

/*if ($service == "validate") {
	$tigo->chekaValidate($service);
} elseif ($service == "query") {
	$tigo->queryTransaction($service);
} elseif ($service == "balance") {
	$tigo->getBalance($service);
} elseif ($service == "bundle") {
	$tigo->getBundles($service);
} else echo "Error: Unknown service!\n";
*/
switch($service){
	case 'import':$tigo->import();break;
	case 'build':$tigo->build_bundle_category();break;
	default: echo "Error, no such service";
}

?>
