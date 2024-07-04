
rm(list = ls())
#tema 5:
#Medidas de tendencia central: cálculo de la media, mediana y moda


#datos

años<-c(16,19,25,45,34,23,26,40,43,18,21,27,38,37,32,32)

años
mean(años)

mean(años, na.rm = TRUE) #media

median(años, na.rm = TRUE) #mediana


#moda
#para la moda se debe instalar el paquete modeest

install.packages("modeest")

library(modeest)

años=c(16,23,25,45,34,23,26,40,43,18,21,23,38,37,32,32)

mfv(años) #funcion de la moda que se carga con modeest

#funcion de la moda

mode <- function(x){
  return(as.numeric(names(which.max(table(x)))))
}
mode(años) #se manda llamar la funcion de la moda

a<-c(5,5,5,6,7,8,8,9,9,5,6,6,6,10)
mfv(a) # 

b<-c(1,2,3,4,5,6,7,8)
mfv(b)

#La moda se puede aplicar en conjuntos de datos categoricos, ejemplo:

c<-c("A","B","A","D")
mfv(c)

#en conjuntos de datos categoricos no es posible calcular la media y la mediana
mean(c)
median(c)

getwd()
data<-read.csv("C:\Users\eveli\Documents\R\scripts/titanic.csv")

data


library(tidyverse)
library(readxl)
getwd()
setwd("C:/Users/eveli/Documents/R/scripts/data_1.xlsx")
data<-read_excel("data_1.xlsx")

data<- mutate(data, categoria=case_when(
  (edad<=18 & edad>=12)~"adolescente",
  (edad<=26 & edad>=19)~"jóven",
  (edad<=59 & edad>=27)~"adulto",
  (edad>=60)~"adulto_mayor"))


nivel_edu <- data$nivel_edu
catego <-data$categoria

mfv(nivel_edu)
mfv(catego)




catSex <- data$Sex

catSex
mfv(catSex)

data2<-read_excel("C:/Users/eveli/Documents/R/scripts/mu_enoe.xlsx", sheet = 1)
data2

nivel_edu <- data2$niv_edu
genero<-data2$sex
mfv(nivel_edu)
mfv(genero)



#Relaciones entre la media, mediana y moda

#se dice que los datos estan en simetria positiva cuando  de izquierda a derecha encontramos
primero la moda, mediana y media

#se dice que los datos estan en simetria negativa cuando  de izquierda a derecha encontramos
primero la media, mediana y moda

Ejemplo:

hist(data2$edad, freq = FALSE, n=100, main= "HISTOGRAMA DE LA EDAD")
#Agregar la mediana con color blue y linea 2 (ejecutar todo junto)
abline(v=mean(data2$edad), col = "blue", lwd = 2)
abline(v=median(data2$edad), col = "green", lwd = 2)
abline(v=mfv(data2$edad), col = "red", lwd = 2)
 
#EN EL histograma vmos que aparece primero la media, luego la mediana, al final la moda
esto significa que los datos tienen UNA ASIMETRIA POSITIVA: quiere decir que es más probable
que nos encontremos mas valores a la izquierda de la media que a la derecha.

#MEDIDAS DE VARIABILIDAD

#La variabilidad nos dice qué tanto se alejan los datos del centro de la distribución.
#Varianza: es el promedio de las distancias al cuadrado de las observaciones a la media

Es el promedio de distancia promedio
var(data2$edad)

#La desviación estandar: raiz de la varianza: 
sqrt(var(data2$edad))
# o utilizamos la funcion sd (desviacion estandar)
sd(data2$edad)


#OTRAS ESTADISTICAS

summary(data2)

#si nos interesan solo algunas variables

subconjunto<- select(data2, "edad","ingreso_mensual")
summary(subconjunto)

subconjunto2<- select(data2, "estado","ing_salarios")
summary(subconjunto2)

install.packages("pastecs")
library(pastecs)
#Dentro de esta libreria se encuentra la funcion stat.desc
#Regresa un resumen mas grande que el summary
stat.desc(subconjunto)

"""
stat.desc(subconjunto) 
                     edad ingreso_mensual
nbr.val      1.028000e+04    1.028000e+04 =cuantos valores validos encontro en el conjunto de datos
nbr.null     0.000000e+00    0.000000e+00 =cuantos valores null encontro en el conjunto de datos
nbr.na       0.000000e+00    0.000000e+00 =cuantos valores perdidos encontro en el conjunto de datos
min          1.200000e+01    1.000000e+03 =valor minimo
max          9.800000e+01    8.100000e+04 =valor maximo
range        8.600000e+01    8.000000e+04 =medida estadistica igual a la diferencia entre el valor maximo y el minimo de los datos
sum          4.084960e+05    7.568533e+07 =suma de todos los numeros contenidos en la edad
median       3.900000e+01    6.000000e+03 =mediana de la edad
mean         3.973696e+01    7.362386e+03 =media de la edad
SE.mean      1.384902e-01    5.816440e+01 =error estandar de la media->que tan precisos estan los datos con
                                          respecto a la media.
                                          Ejemplo: ingresoProedioPoblaciion = media(ingreso_mensual)+-Error.Media
CI.mean.0.95 2.714677e-01    1.140136e+02 =Intervalo de Confianza para la media
var          1.971656e+02    3.477824e+07 =varianza
std.dev      1.404157e+01    5.897308e+03 =desviacion estandar
coef.var     3.533628e-01    8.010050e-01 =coeficiente de variacion= std/mean

"""


#Medidas de posición: cálculo de frecuencias absolutas y relativas, cuantiles

#Dentro de la estadística, existe la posibilidad de hacer una tabla de frecuencias, donde los
#datos estadísticos aparecen bien organizados y se distribuyen de acuerdo con su
#frecuencia, es decir, según las veces que se repite en la muestra. 


# Cálculo de tablas de frecuencias absolutas: Ayuda a obtener el número de veces 
#que un dato se repite dentro de un conjunto de datos; para su cálculo, 
#debes utilizar el comando table, dando como argumento la variable sobre la cual 
# se ejecuta dicho cálculo

#Ejemplo: obtener la frecuencia absoluta de una encuesta, 
#que se obtuvo a partir de la opinión de 10 personas,
#referente a la compra de un producto;

install.packages("readxl")
library(readxl)

getwd()

#setwd("C:\Users\Usuario\Documents\Ciencia de Datos\R\DATASETS")

ruta_excel <-"C:/Users/eveli/Documents/R/scripts/Frecuencias1.xlsx"

excel_sheets(ruta_excel)

frecuencia <- read_excel(ruta_excel)

class(frecuencia)
str(frecuencia)

frecuencia

#funcion para la frecuencia absoluta en forma de tabla
table(frecuencia)

#si se necesita comparar diferentes datos, se puede utilizar el cálculo de las 
#frecuencias relativas.

#pasos:

#1.-  usar el objeto tabla de frecuencias simples ya construido (tabla). 
#2.- Posterior a esto, ejecutar la función prop.table, la cual construirá la 
#tabla con la frecuencia solicitada. 

frecuencia <- read_excel(ruta_excel)

#Sacar la frecuencia absoluta 
frecuenciaAbsoluta<- table(frecuencia)

frecuenciaAbsoluta
class(frecuenciaAbsoluta)

#funcion para la frecuencia relativa prop.table

prop.table(frecuenciaAbsoluta)

#cuantiles

#Es otra forma para poder describir cómo se concentra la información.
#Se debe usar la función quantile

frecuencia <- read_excel(ruta_excel)
frecuencia

#na.rm = TRUE : indica que no se van a considerar los valores na

quantile(frecuencia$Persona, prob = c(0.25, 0.50,0.75, 1), na.rm = TRUE)

####################################################################################


x <- c(29, 13, 62, 4, 63, 96, 1, 90, 50, 46)

quantile(x, 0.25) # cuantil del 25%
quantile(x, c(0.25,0.50,0.75)) # Cuartiles
quantile(x, seq(0.1,0.9, by = 0.1)) # Deciles

#Medidas de dispersión: rango, varianza, desviación estándar y coeficiente de variación


#Rango
#Se debe obtener el máximo valor y el mínimo valor. Para el rango, se debe utilizar la función 
#range; para el mínimo, se usa la función min y para el máximo se usa la función max. 

años=c(48,16,19,25,45,34,23,26,40,43,18,21,27,38,37,32,32)

range(años) #Rango de años
min(años)
max(años)

#varianza y desviacion estandar: 
#

#Otras dos medidas de uso generalizado, para describir la dispersión de una variable, son 
#la varianza y la desviación estándar.

años=c(16,19,25,45,34,23,26,40,43,18,21,27,38,37,32,32)

mean(años)

var(años, na.rm = TRUE)

sd(años, na.rm = TRUE)


#EJERCICIO
set.seed(134)
x <- round(rnorm(1000, 175, 6), 1)
x
"""
1.  Calcule la media, mediana y moda de los valores en x.
2.- Obtenga los deciles de los números en x.
3.- Encuentre el rango intercuartílico, la desviación estándar y varianza muestral 
de las mediciones en x.
"""

mean(x)

mean(x, na.rm = TRUE) #media

median(x, na.rm = TRUE) #mediana








