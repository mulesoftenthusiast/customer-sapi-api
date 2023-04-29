%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "verificationRequest": {
    "contactType": "mobile",
    "countryCode": "+91",
    "mobile": "7411764131",
    "messageContent": "dfhjghxghxgfxgb"
  }
})