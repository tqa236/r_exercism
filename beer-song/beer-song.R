lyrics <- function(first, last) {
  
}

verse <- function(number) {
  plural = "s"
  if (number == 2) plural = ""
  bottles = paste0(as.character(number), " bottle", plural)
  sprintf("%s of beer on the wall, %d bottles of beer.\nTake one down and pass it around, %d bottle%s of beer on the wall.\n", bottles, number, number - 1, plural)
}
