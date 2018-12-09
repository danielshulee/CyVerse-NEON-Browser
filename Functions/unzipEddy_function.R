unzipEddy <- function() {
  files <- list.files(pattern = "*zip")
  for (file in files) {
    date <- strsplit(file, "[.]")[[1]][7]
    unzip(zipfile = file, exdir = date)
    unlink(file)
    incProgress(0.25/length(files))
  }
}
