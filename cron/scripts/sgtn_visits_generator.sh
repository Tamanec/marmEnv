#!/usr/bin/env bash

date;

curl -X POST -H "Content-Type: text/xml;charset=UTF-8" -H "SOAPAction: sgtn_mobile/ISgtn_Mobile/AddVisit" -H "Content-Length: 202" -H "Host: 87.245.154.37" -H "Authorization: Basic c2d0bl9tb2JpbGU6djhFYlUxVmZ4Yg==" -d '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sgtn="sgtn_mobile">
   <soapenv:Header/>
   <soapenv:Body>
      <sgtn:AddVisit/>
   </soapenv:Body>
</soapenv:Envelope>' 'http://87.245.154.37/sgtn_mobileTest/sgtn_mobile.svc';

echo;