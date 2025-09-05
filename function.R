qformater <- function(grid,grid_type){

  if(grid_type == "site"){

  colnames(grid) <- c("latitude", "longitude", "altitude", "soil_class", "asw_i", "asw_min", "asw_max", "from", "to")
  required_site_columns <- c("latitude", "altitude", "soil_class", "asw_i", "asw_min", "asw_max", "from", "to") # nolint
  missing_site_columns <- setdiff(required_site_columns, colnames(grid))
  if (length(missing_site_columns) > 0) {
      stop(paste("Missing columns in site grid:", paste(missing_site_columns, collapse = ", ")))
  }
  grid2 <- grid[, required_site_columns] } else if(grid_type == "spp"){
  colnames(grid) <- c("species", "planted", "fertility", "stems_n", "biom_stem", "biom_root", "biom_foliage")

  required_spp_columns <- c("species", "planted", "fertility", "stems_n", "biom_stem", "biom_root", "biom_foliage")
  missing_spp_columns <- setdiff(required_spp_columns, colnames(grid))
  if (length(missing_spp_columns) > 0) {
      stop(paste("Missing columns in species grid:", paste(missing_spp_columns, collapse = ", ")))
  }
  grid2 <- grid[, required_spp_columns]
    }

  return(grid2)  
}
