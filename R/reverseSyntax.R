reverseScale<- paste0("compute ", paste0(recARE, "r"), "=", max(df[recARE]) + 1, "-", paste0(recARE), ".") %>% tibble::enframe()
reverseSyntax<- rbind(reverseSyntax, reverseScale)
