### Guidance for ServiceRequest.code

`ServiceRequest.code` represents the type of service being requested or ordered, such as diagnostic tests or procedures. It is essential to select appropriate codes based on the context provided by `ServiceRequest.category`. 

Below is a graphical representation of recommended terminology use for `ServiceRequest.code`. This summarises the implementation guidance provided in [AU eRequesting ServiceRequest](StructureDefinition-au-erequesting-servicerequest.html) profile specific implementation guidance.

<div> 
    <img src="ServiceRequest-code-binding.png" alt="ServiceRequest.code binding" style="width:60%"/>
  </div>
*Figure 1: Recommended terminology use for ServiceRequest.code 
<br/>


Example: ServiceRequest resource showing coded request code
~~~
{
  "resourceType" : "ServiceRequest",
  "id" : "fbc",
  ...
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "108252007",
          "display" : "Laboratory procedure"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "26604007",
        "display" : "Complete blood count"
      }
    ],
    "text" : "FBC"
  },
  ...
}
~~~

Example: ServiceRequest resource showing local request code
~~~
{
  "resourceType" : "ServiceRequest",
  "id" : "blood-test-panel",
  ...
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "108252007",
          "display" : "Laboratory procedure"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://local-code-system.org/orders",
        "code": "O-56456782",
        "display": "Blood Test Panel"
      }
    ],
    "text": "Blood Test Panel"
  }
  ...
}
~~~

It is important to note that sending a preferred code does not prohibit sending other codes. 

Example: ServiceRequest resource showing a SNOMED and a local request code
~~~
{
  "resourceType" : "ServiceRequest",
  "id" : "chest-xray",
  ...
"category" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "363679005",
          "display" : "Imaging"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system": "http://snomed.info/sct",
        "code": "399208008",
        "display": "Plain chest X-ray"
      },
      {
        "system": "http://local-code-system.org/orders",
        "code": "O-852634",
        "display": "Chest X-ray"
      }
    ],
    "text" : "Chest X-Ray"
  },
  ...
}
~~~

Example: ServiceRequest resource showing text only request code
~~~
{
  "resourceType" : "ServiceRequest",
  "id" : "urinalysis",
  ...
    "category" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "108252007",
          "display" : "Laboratory procedure"
        }
      ]
    }
  ],
  "code" : {
    "text" : "Urinalysis"
  },
  ...
}
~~~


