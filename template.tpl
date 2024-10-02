___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "categories": ["GA4"],
  "securityGroups": [],
  "displayName": "GA4 - Debug mode",
  "description": "This template returns either true or undefined based on the status of Debug mode. You can use it to set the custom parameter debug_mode in GA4 to the correct value",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "description",
    "displayName": "\u003cstrong\u003eDescription\u003c/strong\u003e\n\u003cp\u003e\nThis template returns either true or undefined value based on the status of Debug mode. You can use it to set the custom parameter debug_mode in GA4 to the correct value automatically.\u003c/p\u003e"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const getContainerVersion = require('getContainerVersion');
const cv = getContainerVersion();

if(cv.debugMode == true){
  return cv.debugMode;
} else if (cv.debugMode == false){
  return undefined;
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_container_data",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 16-9-2024 16:01:49


