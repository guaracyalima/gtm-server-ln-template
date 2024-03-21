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
  "securityGroups": [],
  "displayName": "serverGetLastName",
  "description": "get last  name on server container with data from event data or webhook",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "nomeCompleto",
    "displayName": "",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_SERVER___

// Insira aqui o código do modelo.
var name = data.nomeCompleto;
var words = name.substring(name.indexOf(' '), name.length).toLocaleLowerCase();
return words;


___TESTS___

scenarios:
- name: oracio vieira
  code: |-
    const mockData = {
    nomeCompleto: 'oracio vieira de oliveira berario'
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);
- name: single name
  code: |-
    const mockData = {
    nomeCompleto: 'mandioca'
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);
- name: null name
  code: |-
    const mockData = {
    nomeCompleto: ''
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);


___NOTES___

Created on 21/03/2024, 08:22:45


