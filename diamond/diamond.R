library(stringr)

make_line <- function(letter, middle_letter){
  outside_pad_length <- utf8ToInt(middle_letter) - utf8ToInt(letter)

  if (letter == "A") core_phrase <- "A"
  else {
    center_pad_length <- 2 * (utf8ToInt(letter) - 65) - 1
    center_pad <- paste(replicate(center_pad_length, " "), collapse = "")
    core_phrase <- paste0(letter, center_pad, letter)
  }

  whole_length <- outside_pad_length * 2 + nchar(core_phrase)
  str_pad(core_phrase, whole_length, side = c("both"), pad = " ")
}

diamond <- function(letter) {
  end_index <- utf8ToInt(letter)
  lines <- sapply(65 : end_index, function(x){ make_line(intToUtf8(x), letter)})
  paste(c(lines, rev(lines)[-1]), collapse = "\n")
}
