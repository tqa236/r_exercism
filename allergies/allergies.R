allergy <- function(num) {
  allecgic_items <- c("eggs", "peanuts", "shellfish", "strawberries", "tomatoes", 
                      "chocolate", "pollen", "cats")
  bits <- as.numeric(intToBits(num %% 256))[1:8]
  allecgic_items[bits == 1]    
}

allergic_to <- function(allergy_object, allergy) {
  allergy %in% allergy_object 
}

list_allergies <- function(allergy_object) {
  allergy_object
}