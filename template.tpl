// Copyright 2019 Google LLC

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     https://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
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


