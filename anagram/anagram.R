anagram <- function(subject, candidates) {
  subject_v = sort(unlist(strsplit(tolower(subject), "")))
  is_anagram <- sapply(candidates, function(x){(tolower(x) != tolower(subject)) && identical(subject_v,sort(unlist(strsplit(tolower(x), ""))))})
  anagram_list <- candidates[is_anagram]
  
  if (identical(anagram_list, character(0))) c()
  else anagram_list
}