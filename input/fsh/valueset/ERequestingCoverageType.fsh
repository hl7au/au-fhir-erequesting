ValueSet: ERequestingCoverageType
Id: erequesting-coverage-type
Title: "eRequest Coverage Type and Self Pay codes"
Description: "Payment codes to indicate a preferred payment approach.  Self funded, bulk billed, and DVA."
* ^status = #active
* ^experimental = true
* $coverage-selfpay#pay "Pay" // Self Funded
* $v3-ActCode#PUBLICPOL "public healthcare" // Bulk Billed
* $v3-ActCode#VET "veteran health program" // DVA
