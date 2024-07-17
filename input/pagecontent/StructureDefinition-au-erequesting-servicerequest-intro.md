### Usage scenarios
The following are supported usage scenarios for this profile:

- Query for a request for a diagnostic service for a patient
- Record or update a request for a diagnostic service for a patient

### Profile specific implementation guidance
- The use of coding can vary significantly across systems, implementers need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Systems **SHALL** populate `ServiceRequest.code.text` so that systems can at least display the service requested even if the system does not recognise the code supplied.