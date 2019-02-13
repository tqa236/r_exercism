lyrics <- function(first, last) {
  paste(collapse = "\n", sapply(first : last, verse))
}

plural <- function(number, word){
  plural <- "s"
  if (number == 1) plural <- ""
  if (number > 0){
    paste0(as.character(number), " ", word, plural)
  }
  else "no more bottles"
}

take_one <- function(number){
  if (number > 1) "one"
  else "it"
}

verse <- function(number) {
  original <- plural(number, "bottle")
  left <-  plural(number - 1, "bottle")
  take <- take_one(number)
  if (number > 0){
    sprintf("%s of beer on the wall, %s of beer.\nTake %s down and pass it around, %s of beer on the wall.\n", original, original, take, left)
  }
  else "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
}