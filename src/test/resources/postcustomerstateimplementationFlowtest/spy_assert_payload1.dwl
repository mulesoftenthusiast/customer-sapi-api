%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "contactType__c": "mobile",
    "countryCode__c": "+91",
    "mobile__c": "987986876",
    "email__c": null,
    "password__c": "sdkhjfd",
    "status__c": true
  }
])