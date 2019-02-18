convert_ascii <- function(value, key){
  if ((value >= 97) && (value <= 122)){
    return(97 + (value + key - 97) %% 26)
  } 
  if ((value >= 65) && (value <= 90)){
    return(65 + (value + key - 65) %% 26)
  } 
  value
}

rotate <- function(text, key) {
  text %>% 
    utf8ToInt() %>% 
    sapply(convert_ascii, key) %>% 
    intToUtf8()
}