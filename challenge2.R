complete <- function(directory, id = 1:332)
{
  
  setwd(directory)
  
  nome_dos_arquivos <- list.files(path = directory)
  
  list_of_na <- c()
  
  for(i in id)
  {
    leitura_da_base <- lapply(nome_dos_arquivos[[i]], read.csv)
    leitura_da_base <- as.data.frame(leitura_da_base)
    
    
    list_of_na[i] <- sum(is.na(leitura_da_base))
  }
  
  
  dataframe = data.frame(id = c(id), nobs = c(list_of_na))
  
  print(dataframe)
  
}

complete('C:/Users/Pichau/Downloads/specdata/specdata')
