% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/udfs.R
\name{tx_member_of}
\alias{tx_member_of}
\title{Test membership within a value set}
\usage{
tx_member_of(codings, value_set_uri)
}
\arguments{
\item{codings}{A Column containing a struct representation of a Coding or an array of such 
structs.}

\item{value_set_uri}{An identifier for a FHIR ValueSet.}
}
\value{
A Column containing the result of the operation.
}
\description{
Takes a Coding or array of Codings column as its input. Returns the column which contains a
Boolean value, indicating whether any of the input Codings is a member of the specified FHIR
ValueSet.
}
\seealso{
\href{https://pathling.csiro.au/docs/libraries/terminology#value-set-membership}{Pathling documentation - Value set membership}

Other terminology functions: 
\code{\link{tx_display}()},
\code{\link{tx_property_of}()},
\code{\link{tx_subsumed_by}()},
\code{\link{tx_subsumes}()},
\code{\link{tx_translate}()}
}
\concept{terminology functions}
