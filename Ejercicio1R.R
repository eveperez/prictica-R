
#1. Desde la consola, verifica dónde te encuentras actualmente con getwd(), 
# posteriormente ve a Rcourse/Module1 con setwd().
#Verifica donde te encuentras actualmente
getwd()
# "C:/Users/Usuario/Documents/Ciencia de Datos/R/DATASETS"
# Mover directorio actual 
setwd("C:/Users/Usuario/Documents/Ciencia de Datos/R/Rcourse/Module2")

#"C:/Users/Usuario/Documents/Ciencia de Datos/R/Rcourse/Module1"

#2. Usa R como calculadora para calcular la raíz cuadrada de 654 (Si no conoces la función, puedes buscarla en Internet).
sqrt(654)
#3. Usa R como calculadora para calcular el porcentaje de hombres y mujeres presentes actualmente en el curso.

#variable<-valor 
mujeres<-12
hombres<-15
total<-mujeres + hombres
p_mujeres<-(mujeres*100)/total
p_hombres<-(hombres*100)/total
#4. Crea un nuevo objeto “myobject” con valor 60. Muestra “miobjeto” en la consola.
myobject<-60
print(myobject)
#5.  Asigna myobject con valor 87.
myobject <-87
#6. Resta uno de myobject. Reasigna. 
myobject<-myobject-1
#7. Crea un nuevo objeto “mysqrt”, que almacenará la raíz cuadrada de “myobject”.
mysqrt<-sqrt(myobject)
#8. Crea un nuevo objeto “mydiv”, que almacenará el resultado de “myobject” dividido por “mysqrt”.
mydiv<-myobject/mysqrt

edad <- c(10,14,10,6,4,2,7,8,3,90,75,23,55,43,67,54) #crea la lista
mean(edad) #media
median(edad) #mediana
Mode(edad) #moda

#Instalar la libreria
install.packages("DescTools")

quantile(edad, 0.50)

percentiles <- quantile(edad, type= 1 )
#-----------------------------------------------

#10. Crea un objeto que se llame Primer valor, y almacena un número aleatorio entre el 1 al 20:

Primer_valor<- sample(1:20,1)
Primer_valor
 # a. Crea un segundo objeto que se llame Segundo valor, almacena un número aleatorio del 5 al 10
Segundo_Valor <-sample(5:10,1)
#b. Realiza una resta del primer valor menos el segundo  valor
resta<-Primer_valor-Segundo_Valor
#c. Realiza una suma de ambos valores
#d. Realiza una multiplicación de ambos valores, y suma al resultado el primer valor
#e. Realiza una división de ambos valores, y al resultado resta el segundo valor


Primer_valor<- sample(1:20,1,F) #sample crea un numero aleatorioi dentro de un rango de datos
Segundo_Valor <-sample(5:10,1) 
resta<-Primer_valor-Segundo_valor


edad[order(edad)] #orden ascendente

edad[order(-edad)]
#orden descendente

maximo= max(edad)
minimo = min(edad)





