to_letter <- function(word){
  sort(unlist(strsplit(tolower(word), "")))
}

anagram <- function(subject, candidates) {
  subject_v <- to_letter(subject)
  is_anagram <- sapply(candidates, function(x){(tolower(x) != tolower(subject)) && identical(subject_v, to_letter(x))})
  anagram_list <- candidates[is_anagram]
  
  if (length(anagram_list) == 0) c()
  else anagram_list
}