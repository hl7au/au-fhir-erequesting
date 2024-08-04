|AU Core Profile |Must Support Element|Reference|
---|---|---
|AU Core Diagnostic Result Observation|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, AU Base RelatedPerson|
|AU Core Diagnostic Result Observation|Observation.hasMember|AU Core Diagnostic Result Observation, AU Core Pathology Result Observation|
|AU Core Encounter|Encounter.participant.individual|AU Core Practitioner, AU Core PractitionerRole, AU Base Related Person|
|AU Core Encounter|Encounter.reasonReference|AU Core Condition, Observation, AU Core Procedure|
|AU Core Pathology Result Observation|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, AU Base RelatedPerson|
|AU Core Procedure|Procedure.reasonReference|AU Core Condition, Observation, AU Core Procedure, DocumentReference|
|AU Core MedicationRequest|MedicationRequest.requester|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, AU Base Related Person|
|AU Core MedicationRequest|MedicationRequest.reasonReference|AU Core Condition, Observation|