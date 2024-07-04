rm(list = ls())
library(readr)

#Data frame 
iris

# Crea otro archivo en la ubicacion 
write_csv(iris, file = "C:/Users/eveli/Documents/R/scripts/iris2.csv")

write_csv(iris, file = "C:/Users/eveli/Documents/R/scripts/SP1.csv")

getwd()
setwd("C:/Users/eveli/Documents/R/scripts/SP1.csv")

dfIris <- read_delim("iris.csv", delim = ",")

dfIris <- read.csv("iris.csv")
dfIris

dfIris <- read.csv("SP1.csv")
dfIris

sp1

#almacenar el archivo SP1.csv un folder llamado datasets dentro de la carpeta de
#documentos de tu computadora, para poder accesar al archivo 
#usa los comandos siguientes.

#1. Obtén la ruta del directorio de trabajo:
  
getwd()

#2. Fija el directorio de trabajo:
setwd("C:/Users/eveli/Documents/R/scripts")
  
  
#La función read.csv es para leer el fichero .csv:
  read.csv("SP1.csv") # El archivo csv debe estar en el directorio de trabajo.\

#3. Asigna a un objeto el fichero leído anteriormente:
  football.nfl <- read.csv("SP1.csv")
  
  football.nfl <- read_delim("SP1.csv", delim=",") #read_delim es una funcion de tidyverse()
  
  #Que tipo es 
  class(football.nfl)
  
  football.nfl

  head(football.nfl)  
  
  tail(football.nfl) #despliega los ultimos registros del data set

  str(football.nfl)
  class(football.nfl)
  summary(football.nfl)
  str(football.nfl)

# 4. Lee el fichero directamente desde una URL y un directorio en la maquina:
  data.url <- read.csv("https://www.football-data.co.uk/mmz4281/2021/SP1.csv")
  data.url
  
  
data.directorio<-read.csv("C:/Users/eveli/Documents/R/scripts/SP1.csv")


tail(data.url) 
str(data.url)
# 5. Calcula la dimensión de la base de datos:
  dim(football.nfl)
  names(football.nfl) #regresa el nombre de las columnas del data frame.

#--------------------------------------------------------

  
  #Abrir el archivo que se encuentra en el datast, obtendrás sus características 
  #y finalmente, podrás imprimir los resultados en un   archivo CSV.
  
  
  #1. Lee el archivo "netflix_titles.csv" desde Github, almacénalo en un df llamado Netflix.

  data_netflix<-read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv")  
  data_netflix
  
  #2. Obtén la dimensión y el tipo de objeto que resulta.
  dim(data_netflix) #dimension
  class(data_netflix) #tipo de objeto
  str(data_netflix)
  head(data_netflix)
  names(data_netflix)
  
  #3. Recupera los títulos que se estrenaron después del 2015. 
  #Guarda este df en una variable llamada net.2015 
  #(hint: primero podrías filtrar solo aquellas filas del data frame que 
  #  corresponden a estrenos después del 2015, por ejemplo, dataframe[columna > 2015, ]).   
  
  
  net.2015<-filter(data_netflix,release_year>2015)
  
  net.2015 #regresa los datos filtrados
  data_netflix #regresa el data frame sin filtrar
  class(net.2015)
  #---------------------------
  # otro ejemplo
  
  data("murders")
  
  new_table<-select(murders,state,region,total)
  new_table
  
  class(new_table)
  
  filter(new_table, total>=300)
  
  #pasen todo murders a un dfMurders y muestren los nombres de sus columnas
  #muestren la dimension de murders
  #
  dfMurders<-murders
  
  dim(dfMurders)
  names(dfMurders)
  
  dfm<-select(dfMurders, total,region)
  filter(dfm, region=="South")
  
  filter(dfMurders, total>=300 & total <= 800 )

  #---------------------------------------
 names(data_netflix)#regresa el nombre de las columnas del df
  
 subset(data_netflix,release_year>=2015)
  
  
 filter(data_netflix,release_year>=2015)
  

  
4. Escribe los resultados en un archivo .csv llamado res.netflix.csv 
(Hint: consulta la función write.csv)

  write.csv(net.2015, "C:/Users/Usuario/Documents/Ciencia de Datos/R/DATASETS/res.netflix4.csv", row.names=TRUE)
  write.csv(net.2015, "res.netflix4.csv", row.names=TRUE)
  
  write.xlsx(net.2015, "res.netflix4.xlsx")
  
  write_excel_csv(net.2015, "res.netflix4.xls")
  
   write.xlsx(net.2015, "C:/Users/Usuario/Documents/Ciencia de Datos/R/DATASETS/res.netflix4.xlsx")
  write.table(net.2015, "C:/Users/Usuario/Documents/Ciencia de Datos/R/DATASETS/res.netflix4.txt")
  
  #-----------------------------------
  2. XML
  Ahora vamos a leer datos XML en R:
    Lo primero es instalar y cargar el paquete XML y alojar el link en una variable link para su lectura:
  
  install.packages("XML")
  library(XML)
  
  link <- "http://www-db.deis.unibo.it/courses/TW/DOCS/w3schools/xml/cd_catalog.xml"
  class(link)
  
  
  # Todo esto se puede realizar en un solo paso utilizando el siguiente comando:
  link
  
  
  data_df <- xmlToDataFrame(link)
  head(data_df)
  data_df
  
  tail(data_df)
  nrow(data_df)
  ncol(data_df)
  
  summary(data_df)
  
  
 # Convertimos a otros tipos de datos:
  data_df$PRICE <- as.numeric(data_df$PRICE) 
  data_df$PRICE
  
  data_df$YEAR <- as.numeric(data_df$YEAR)
  mean(data_df$PRICE)
  mean(data_df$YEAR)
  #---------------------------------------------------------------
  #crea un df del conjunto de datos Titanic: ver archivo titanic.csv
  #revisar con  las funciones visats que el nuevo df esta correctamente creado
  #visualiza el df
  
  data("Titanic")
  Titanic
  #crea un archivo en excel donde reportes cuantas personas sobreviveron por cada clase en el barco
  #crea un archivo en csv donde reportes cuantas mujeres y niños sobrevivieron por clase
  

 
  #Carga el archivo Data set Salary 2024 
  #revisa sus columnas, crea una nueva renombrando los datos para variables categorias a numericas 
  #realiza alguinos filtros (explica los filtros)
  #organiza los datos y mandalos 
  
  
  write_csv(iris, file = "C:/Users/eveli/Documents/R/scripts/Dataset salary 2024.csv")
  ejercicio <- read.csv("Dataset salary 2024.csv", header=TRUE) 
  
  head(ejercicio)
  
  ejercicio <- mutate(ejercicio, categoria = case_when(
    
      ))
  
  # Comando mutate() permite transformar el conjunto de datos con una nueva variable. 
  
  data<- mutate(data, categoria=case_when(
    (edad<=18 & edad>=12)~"adolescente",
    (edad<=26 & edad>=19)~"jóven",
    (edad<=59 & edad>=27)~"adulto",
    (edad>=60)~"adulto_mayor"))
  
  
  