# cn <- function(data = df, print = TRUE) {
#   varsARE <- data %>%
#     select(cn1:cn5) %>% names()
#   item<-data %>%
#       select(varsARE) %>%
#       sjt.itemanalysis()
#   names(item$index.scores) <- "CN"
#   item$index.scores<-set_label(item$index.scores, label = paste0(c("Cronbach's α=", round(item[["cronbach.values"]][[1]],3), "; Mean of ",
#                                                                    paste0(varsARE, collapse = "", sep =",")),  collapse = ""))
#   data <- cbind(data, item$index.scores)
#   if (print==1) {
#
#   }
#
# }
