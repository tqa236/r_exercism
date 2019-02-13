lyrics <- function(first, last) {
  
}

plural <- function(number, word){
  plural <- "s"
  if (number == 1) plural <- ""
  paste0(as.character(number), " ", word, plural)
}

verse <- function(number) {
  original = plural(number, "bottle")
  left =  plural(number - 1, "bottle")
  sprintf("%s of beer on the wall, %s of beer.\nTake one down and pass it around, %s of beer on the wall.\n", original, original, left)
}
