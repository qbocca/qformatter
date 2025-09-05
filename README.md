# qformatter
Add-on function for the r3PG package.

---
Add on to help prep site and species dataframes for the r3PG (https://github.com/trotsiuk/r3PG/tree/master) package. Add-on is a simple R function that makes sure that CSV data is properly formatted to accepted by the run_3PG function in Troksiuk's orginal package. 

This function was built after having issues with the run_3PG function not accepting dataframes that were formatted mannually in external software (such as Excel) and imported to the R enviroment via a csv file.

### Usage.
```
# load site data
grid <- read.csv(file.path("/your/path/site_grid.csv"))

# for species formatting, use the term "spp"
grid2 <- qformater(grid,"site")
```
### Example with outputs.
```
 site.grid2 <- qformater(site.grid,"site")
 
  head(site.grid2)

  latitude altitude soil_class asw_i asw_min asw_max    from      to
1 35.13311  83.7552          4   200     200     250 2018-01 2022-12
 
  spp.grid2 <- qformater(spp.grid, "spp")
 
 head(spp.grid2)
     species planted fertility stems_n biom_stem biom_root biom_foliage
1 Cottonwood 2018-01   0.57895     500       0.1       0.1          0.1
```
