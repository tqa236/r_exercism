convert_ascii <- function(value, key){
  if ((value >= 97) && (value <= 122)){
    value <- 97 + (value + key - 97) %% 26
  } 
  if ((value >= 65) && (value <= 90)){
    value <- 65 + (value + key - 65) %% 26
  } 
  value
}

rotate <- function(text, key) {
  ascii_value <- utf8ToInt(text)
  ascii_value <- sapply(ascii_value, convert_ascii, key)
  intToUtf8(ascii_value)
}