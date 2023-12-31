% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasource.R
\name{ds_write_delta}
\alias{ds_write_delta}
\title{Write FHIR data to Delta files}
\usage{
ds_write_delta(ds, path, import_mode = ImportMode$OVERWRITE)
}
\arguments{
\item{ds}{The DataSource object.}

\item{path}{The URI of the directory to write the files to.}

\item{import_mode}{The import mode to use when writing the data - "overwrite" will overwrite any 
existing data, "merge" will merge the new data with the existing data based on resource ID.}
}
\value{
No return value, called for side effects only.
}
\description{
Writes the data from a data source to a directory of Delta files.
}
\examples{
\dontshow{if (pathling_is_spark_installed()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
pc <- pathling_connect()
data_source <- pc \%>\% pathling_read_ndjson(pathling_examples('ndjson'))

# Write the data to a directory of Delta files.
data_source \%>\% ds_write_delta(file.path(tempdir(), 'delta'), import_mode = ImportMode$OVERWRITE)

pathling_disconnect(pc)
\dontshow{\}) # examplesIf}
}
\seealso{
\href{https://pathling.csiro.au/docs/libraries/fhirpath-query#delta-lake-1}{Pathling documentation - Writing Delta}

\code{\link{ImportMode}}

Other data sink functions: 
\code{\link{ds_write_ndjson}()},
\code{\link{ds_write_parquet}()},
\code{\link{ds_write_tables}()}
}
\concept{data sink functions}
