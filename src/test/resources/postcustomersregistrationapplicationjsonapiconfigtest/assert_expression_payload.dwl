%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "registrationResponse": {
    "eventInstanceId": "hdsfhjdh-jxbv859-sjdf7643-3746bbd334",
    "status": "success"
  }
})