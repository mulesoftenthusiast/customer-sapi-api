%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "contactType__c": "mobile",
    "countryCode__c": "+91",
    "mobile__c": "10000999",
    "password__c": "sdkhjfd",
    "acceptDataPolicy__c": "true",
    "recieveNews__c": "true",
    "acceptPIC__c": "true",
    "locale__c": "en",
    "captchatoken__c": "weu8iuehfew8fyiushdfsiuehfd8sed",
    "recieveClaimsettle__c": "true"
  }
])