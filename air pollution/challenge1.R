pollutantmean            <- function(directory, pollutant, id = 1:332)
{
  
  pollutant              <- deparse(substitute(pollutant))
  
  lista_final            <- list()
  
  setwd(directory)
  
  nomes_dos_arquivos     <- list.files(path = directory)
  
  
  for (i in 1:332)
  {
    leitura_dos_arquivos <- lapply(nomes_dos_arquivos[[i]], read.csv)
    leitura_dos_arquivos <- as.data.frame(leitura_dos_arquivos)
    
    
    
    media_momentanea     <- lapply(leitura_dos_arquivos, mean, na.rm = TRUE)
    #print(media_momentanea[[pollutant]])
    
    lista_final[i] <- media_momentanea[[pollutant]]
    
    #lista_final[i] <- media_momentanea
    #print(lista_final)
    
  }
  
  while (TRUE) 
  {
    posicao_user = as.numeric(readline(prompt = "Digite o número da posição da lista que você quer: "))
    
    print(lista_final[posicao_user])
    
    pergunta = toString(readline(prompt = "Deseja digita outra posição? (Digite S/N): "))
    
    if (pergunta == "S")
    {
      next
    }
    else if (pergunta == "N")
    {
      break
    }
    
  }
  
}


pollutantmean('C:/Users/Pichau/Downloads/specdata/specdata', nitrate)