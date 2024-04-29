ValueSet: ERequestingCoverageType
Id: erequesting-coverage-type
Title: "eRequesting Coverage Type and Self Pay codes"
* ^status = #active
* ^description = "eRequesting Coverage Type and Self Pay codes"
* ^experimental = true
* $coverage-selfpay#pay "Pay" // Self Funded
* $v3-ActCode#PUBLICPOL "public healthcare" // Bulk Billed
* $v3-ActCode#VET "veteran health program" // DVA
