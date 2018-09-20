<html>
<head>
</head>
<body>

CHEKA_TRANSACTION_QUERY/Catelog 192.168.1.14:7300

CHEKA_TRANSACTION 192.168.1.14:7200

1. For Querying and Catalogue:

http://IP:7300/cheka/request



Credentials will be shared in the skype



1. For Subscription:

http://IP:7200/ Selcom/request

Username=selcom

http://schemas.xmlsoap.org/soap/envelope/


*****************************************
TIGO

http://10.222.15.34/POSWebService/ProcessPOSRequest.svc?wsdl


<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/" xmlns:web="http://schemas.datacontract.org/2004/07/WebService_POS_Extreme.POS_Extreme_BL">
<soapenv:Header/>
<soapenv:Body>
<tem:processPOSRequest>
<!--Optional:-->
<tem:objRequest>
<!--Optional:-->
<web:cellid>111</web:cellid>
<!--Optional:-->
<web:cmsisdn>255716402xxx</web:cmsisdn>
<!--Optional:-->
<web:conf></web:conf>
<!--Optional:-->
<web:dealerPassword>xxx</web:dealerPassword>
<!--Optional:-->
<web:dealerUserName>xxx</web:dealerUserName>
<!--Optional:-->
<web:language></web:language>
<!--Optional:-->
<web:menu></web:menu>
<!--Optional:-->
<web:msisdn>255716402xxx</web:msisdn>
<!--Optional:-->
<web:package>day_megabox</web:package>
<!--Optional:-->
<web:password>1234</web:password>
<!--Optional:-->
<web:submenu></web:submenu>
</tem:objRequest>
</tem:processPOSRequest>
</soapenv:Body>
</soapenv:Envelope>

<?php
if ((substr($_SERVER['REMOTE_ADDR'],0,10) !== "192.168.22")&&($_SERVER['REMOTE_ADDR'] !== "127.0.0.1")){
echo "403|Access denied";
exit();
}
?>



</body>
</head>