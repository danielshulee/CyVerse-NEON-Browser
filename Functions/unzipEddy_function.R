unzipEddy <- function(site, path) {
  files <- list.files(pattern = "*zip")
  for (file in files) {
    date <- strsplit(file, "[.]")[[1]][7]
    unzip(zipfile = file, exdir = date)
    unlink(file)
    incProgress(0.25/length(files))
  }
  size <- sum(file.info(list.files(paste0("../", path), all.files = TRUE, recursive = TRUE, full.names = T))$size)
  write_downloadSummary(method = "Regular", dpID = Product_ID_regular(), dpName = NEONproducts_product$productName[NEONproducts_product$productCode == Product_ID_regular()], site = Field_Site_regular(), dates = download_dates(), package = Package_type_regular(), size = utils:::format.object_size(x = size, units = "auto"), path = path)
  setwd('..')
  zip(zipfile = paste0("NEON_", site, "_00200"), files = path)
  incProgress(0.75)
}
