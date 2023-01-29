# Write a function that reads a directory full of files and returns the number of non NA
# values in each file.

complete <- function(directory, id = 1:332)
{
  
  setwd(directory)
  
  nome_dos_arquivos <- list.files(path = directory)
  
  list_of_na <- c()
  
  for(i in id)
  {
    leitura_da_base <- lapply(nome_dos_arquivos[[i]], read.csv)
    leitura_da_base <- as.data.frame(leitura_da_base)
    
    sum_trial <- sum(!is.na(leitura_da_base$sulfate)) + sum(!is.na(leitura_da_base$nitrate))
    
    list_of_na[i] <- sum_trial
    
  }
  
  
  dataframe = data.frame(id = c(id), nobs = c(list_of_na))
  
  print(dataframe)
  
}

complete('C:/Users/Pichau/Downloads/specdata/specdata')
