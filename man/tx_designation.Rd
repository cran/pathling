% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/udfs.R
\name{tx_designation}
\alias{tx_designation}
\title{Get designations for codings}
\usage{
tx_designation(coding, use = NULL, language = NULL)
}
\arguments{
\item{coding}{A Column containing a struct representation of a Coding.}

\item{use}{The code with the use of the designations.}

\item{language}{The language of the designations.}
}
\value{
The Column containing the result of the operation (array of strings with designation values).
}
\description{
Takes a Coding column as its input. Returns a Column that contains the values of designations 
(strings) for this coding that match the specified use and language. If the language is
not provided, then all designations with the specified type are returned regardless of
their language.
}
\examples{
\dontshow{if (pathling_is_spark_installed()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
pc <- pathling_connect()

# Get the (first) SNOMED CT "Fully specified name" ('900000000000003001')  
# for the first coding of the Condition resource, in the 'en' language.
pc \%>\% pathling_example_resource('Condition') \%>\% 
     sparklyr::mutate(
            id, 
            designation = (!!tx_designation(code[['coding']][[0]], 
                     !!tx_to_snomed_coding('900000000000003001'), language = 'en'))[[0]], 
            .keep='none')
pathling_disconnect(pc)
\dontshow{\}) # examplesIf}
}
\seealso{
\href{https://pathling.csiro.au/docs/libraries/terminology#retrieving-designations}{Pathling documentation - Retrieving designations}
}
\concept{Terminology functions}
