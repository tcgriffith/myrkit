#' trannsnum
#'
#' convert characterized numeric columns back to numeric
#'
#' @param df data frame
#'
#' @examples
#'  datasets::CO2->t
#'  require(dplyr)
#'  tbl_df(t) %>% mutate(conc=as.character(conc),uptake=as.character(uptake))->t
#'  t2<-transnum(t)
#'  str(t2)

transnum<-function(df){

  tmpdf<-lapply(df,function(col){
    if (suppressWarnings(all(!is.na(as.numeric(as.character(col)))))){  # nasty braces
      as.numeric(as.character(col))
    }
    else{
      col
    }
  })
  return(dplyr::tbl_df(tmpdf))
}
