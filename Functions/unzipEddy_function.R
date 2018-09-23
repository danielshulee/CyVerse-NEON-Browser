unzipEddy <- function(site) {
  files <- list.files()
  showNotification(ui = "Transferring as zip…", duration = NULL, id = "zip", type = "message")
  for (file in files) {
    date <- strsplit(file, "[.]")[[1]][7]
    unzip(zipfile = file, exdir = date)
    unlink(file)
  }
  zip(zipfile = paste0("NEON_", site, "_00200"), files = '.')
}
