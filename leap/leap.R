leap <- function(year) {
  if (year %% 4 == 0){
    if ((year %% 100 == 0 ) &  (year %% 400 != 0 )){
      FALSE
    }
    else{
      TRUE
    }
  }
  else{
    FALSE
  }
}
