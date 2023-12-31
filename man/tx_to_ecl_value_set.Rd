% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{tx_to_ecl_value_set}
\alias{tx_to_ecl_value_set}
\title{Convert a SNOMED CT ECL expression to a ValueSet URI}
\usage{
tx_to_ecl_value_set(ecl)
}
\arguments{
\item{ecl}{The ECL expression.}
}
\value{
The ValueSet URI.
}
\description{
Converts a SNOMED CT ECL expression into a FHIR ValueSet URI. It can be used with the 
`\code{\link{tx_member_of}} function.
}
\examples{
\dontshow{if (pathling_is_spark_installed()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Example usage of tx_to_ecl_value_set function
tx_to_ecl_value_set('<<373265006 |Analgesic (substance)|')
\dontshow{\}) # examplesIf}
}
\seealso{
\href{https://terminology.hl7.org/SNOMEDCT.html#snomed-ct-implicit-value-sets}{Using SNOMED CT with HL7 Standards - Implicit Value Sets}

Other terminology helpers: 
\code{\link{tx_to_coding}()},
\code{\link{tx_to_loinc_coding}()},
\code{\link{tx_to_snomed_coding}()}
}
\concept{terminology helpers}
