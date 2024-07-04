# 1. Instala y carga los paquetes ggplot2 y WriteXLS.
# 2. El paquete ggplot2 carga automáticamente el conjunto de datos de diamantes en el 
#  entorno de trabajo. Estos datos puedes usarlos como un 
# objeto después de cargar ggplot2. Contesta las siguientes preguntas:
 library(ggplot2)
 library(WriteXLS)
 
 
 rm(list=ls())
 
 ?diamonds
 
 diamonds
 mtcards
 iris
 murders
 
 settw(C:/Users/eveli/Documents/R/scripts/Ejercicio2R.R)
 
data("diamonds") #carga diamantes

#   a. ¿Cuáles son las dimensiones de los diamantes? 
str(diamonds)
#  RENGLONES/Observaciones: 539400, Columnas o Variables: 10
  
#   b. ¿Cuáles son los nombres de las columnas de diamantes?
  
  head(diamonds)# muestra el encabezado con los primeros registros de la tabla
  names(diamonds)# muestra los nombres de las columnas de las tablas
  
head(diamonds)

  
  #   Puedes leer la página de ayuda del conjunto de datos de diamantes para comprender lo que contiene. 
  #escribir en la busqueda diamonds, y buscar
  
  # Nota: Diamantes es un marco de datos, puedes probarlo con is.data.frame(diamantes) (devuelve VERDADERO).
  is.data.frame(diamonds)
  
  # 3. Selecciona las columnas Quilate, Corte, Color y Precio de los diamantes y 
  #guárdalas en el objeto diams1.
  
  diams1<-list(Quilate = diamonds$carat,Corte=diamonds$cut, Color = diamonds$color, Precio= diamonds$price)
  
  diams1 #muestra el contenido de la lista diams1
  
  diams1$Quilate #accede al campo quilate de la lista diams1
  
  diams1["Quilate"]# esta es otra forma de acceder al campo quilate, escribiendo el nombre del campo
  
  diams1[1]#tambien se puede acceder al campo escribiendo el numero de columna o campo que es
  
  
  # 4. Desde la consola Instala y carga el paquete dplyr.
  
  install.packages("dbplyr") #LIBRERIA PARA EL MANEJO DE BASES DE DATOS
  library(dbplyr) #Usar la libreria, se activa
  
  # 5. Usa la función "sample_n" del paquete dplyr para muestrear aleatoriamente 200 
  #   líneas de diams1. Guarda en el objeto diams1.
  
  diams1<- sample_n(diamonds, size = 200)
  class(diams1)
  diams1
  
  diams2= list(sample_n(diamonds, size = 200)) #guarada en una nueva lista:diams2, 200 registros del df
  length(diams1) 
  str(diams2)
  diams2
  
  #-----------------------------
  diams1 <- sample_n(diamonds, size = 200) #se resuelve la pregunta 5 del ejercicio
    
    # 6. Guarda diams en dos archivos (diferentes formatos de archivo):
  #     • diamonds200.txt con función write.table (del paquete utils)
  
  getwd()
  setwd("C:/Users/Usuario/Documents/Ciencia de Datos/R/Rcourse/Module2")
   
  install.packages("utilities") #instala el paquete
  library(utilities) #se activa el paquete
  
  write.table(diams1,"diamonds200.txt") # Genera un txt en la ruta que se configuró
  
  
  # • diamonds200.xls con función WriteXLS (del paquete del mismo nombre WriteXLS)
  
  install.packages("xlsx")
  library(xlsx)
  
  install.packages("openxlsx")
  library(openxlsx)
  
  WriteXLS(diams1,ExcelFileName= "diamonds200.xlsx",  perl = "perl") 
  
  write.xlsx(diams1,"diamonds200.xlsx")
  
  write.xlsx()
  
  write.csv(diams1,"diamonds.csv")
  
  testPerl(perl = "per1", verbose = TRUE)
  
  