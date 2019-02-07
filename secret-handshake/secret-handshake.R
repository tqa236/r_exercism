handshake <- function(n) {
  if (n%%16 == 0) NULL
  else{
    bits = as.numeric(intToBits(n%%32))[1:5]
    actions = c("wink", "double blink", "close your eyes", "jump")[bits[1:4] == 1]
    if (bits[5] == 1) rev(actions)
    else actions
  }

}
