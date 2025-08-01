### Profile Specific Implementation Guidance
- Clinical Context is defined as narrative information providing an overview of the individual's current clinical situation associated with a requested service.
- This profile constrains `DocumentReference.content.attachment` to support narrative text only, ensuring consistency with the definition of Clinical Context from [AUeReqDI](auereqdi.html). To support this, the following constraints apply:
    - `DocumentReference.content.attachment` is mandatory to ensure that Clinical Context is always provided.
    - `DocumentReference.content.attachment.contentType `is constrained to `text/plain`, limiting the representation to plain text narrative. This ensures that the content is both human-readable and interoperable across systems without additional rendering or format handling. Other formats such as PDF, DOC, DOCX, or HTML are not permitted.
    - `DocumentReference.content.attachment.data` must be provided inline using base64 encoding. This ensures that the narrative is included in the resource, avoiding dependencies on external systems or links.
- These constraints are designed to ensure that Clinical Context is accessible, clearly represented, and consistently exchanged as part of AU eRequesting workflows. 
