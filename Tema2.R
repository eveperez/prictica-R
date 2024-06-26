
#TEMA 2
installed.packages() #REVISA QUE PAQUETES HAY INSTALADOS

#• Uso de variables
?ls()

?Reserved #revisa cuales son las palabras reservadas

rm(list= ls())

 #operadores de asignación

 #  <- , ->, =

  var1.x<-5
  
  var1.y= 5
  
  var1.x + var1.y + var1.x
  
  d<-2.56
  
  Var1.x <- 5
  mi_variable <-"hola"
  .mi_variable <-TRUE
  
  v1 <- TRUE
  
  

#• Tipos de datos

numero<-25 #entero: numeric
numeroFloat<- 25.56 #Numero con punto decimal:numeric
caracter<-"456" # string/cadena siempre van entre comillas
logico<-TRUE #bool solo almacena verdaro o falso, 1 o 0


num1 = 23.4
num2 = "15"

print(num1 + num2)


#• Comprobación de tipos de dato

class(numero)

suma<- num1 + as.numeric(num2)

class(logico)
class(numeroFloat)
class(numero)

class(caracter) #character

typeof(numeroFloat)
typeof(numero)
typeof(caracter)

#• Conversión de tipos de datos: COERCION
as.numeric(caracter)
as.character(numero)
as.integer()
as.factor() 
as.logical() #verdadero o falso 
as.null() #convertir un dato vacio a nulo

numero<-as.integer(numero)


class(num2)

suma <- num1 + as.numeric(num2)
suma

num2 <- as.numeric(num2)

logico <-78
  
class(num2)


#logical ->integer ->numeric -> character

#• Operadores básicos
#ARITMETICOS
5 + 3# suma
5 - 3#resta
5 * 3#multiplicacion
5 / 3#division
5^3  #potencia
5**3 #potencia
5%%3 #modulo de una division

#Cualquier operacion con NA, devolverá como resultado NA

?NA ---> #Not Available
NA + 5

NA**3

#OPERADORES RELACIONALES

<, <=  # a < b a<=b
>, >=  # 10>3 10>=10
== #a == b
!= #NO ES IGUAL A  x != y  

# Operadores LOGICOS

"""
OPERADOR  COMPARACION   RESULTADO  
x | y       x ó y         True  :solo es falso si las 2 variables son falsas

x & y       x y y         True cuando las 2 variables sean verdaderas.
                          False todas las demas combinaciones

!x          x no es verdadero     (negacion del verdadero)                   

isTrue(x)  x es verdadero   Verdadero si x es verdadera
"""
!logico

x<-4
y<-2

(x == 4 | y == 20)   
(x == 4 & y == 20)  
!y == 2 # y es diferente de ... 
isTRUE(y == 5)

#• Estructuras de datos: vectores, matrices, data tables y data frames

is.vector(caracter) #verifica si un objeto es un vector
length(caracter)#muestra la longitud de un vector

#ejemplo
mi_vector <- c(2, 3, 6, 7, 8, 10, 11)
print(mi_vector)

is.vector(mi_vector) # Evalua si es un vector 
length(mi_vector)

mi_vector + 2

mi_vector * 2
mi_vector %% 2
mi_vector / 2

matrix(5:10) #creacion de una matriz 

matriz3 <-matrix( nrow = 3, ncol = 4) #creacion de una matriz con 3 ren y 4 col
matriz3

matrix(1:36, nrow = 3, ncol = 12)

# UNION DE VECTORES PARA CREAR MATRICES
cbin() #une vectores usando c/u como columna
rbin() #une verctores usando c/u como renglon

vector_1 <- 1:4
vector_2 <- 5:8
vector_3 <- 9:12
vector_4 <- 13:16


matriz <- rbind(vector_1, vector_2, vector_3, vector_4) # row bin (union de datos, te los acomoda por columnas)

matriz


matriz2 <- cbind(vector_1, vector_2, vector_3, vector_4) #  (union de datos, te los acomoda por filas)
matriz2
class(matriz2)

matriz3 <-matrix(1:12, nrow = 3, ncol = 4)#crea matriz3
matriz3

matriz3[2,3]  #muestra solo un valor de la matriz

matriz3[3,]   #muestre el renglon 3
matriz3[,3]   #muestre la columna 3

# Primera y segunda columna, primera fila
matriz3[1, 3:4]

matriz3[2, 2:3]

matriz3[, ] # Regresa toda la matriz, todos los elementos

length(ncol)

matriz3[3, 2:length(ncol)]# Esta leyendo la matriz al reves 
matriz3[3, 2:1]# Lo mismo a la de arriba 



matriz4<-matrix(1:45, nrow = 9, ncol= 5) # matriz de 1 a 45, 9 filas y 5 columnas
matriz4


#EJERCICIO
matriz4[2:3,1:4]
matriz4[1:9,4]
matriz4[3:5,3:5]
matriz4[6:8,2:3]
matriz4[9,3:5]


matriz3[3, 3:2]# 

matriz3[1:2,3:4]

#concatenacion o union de vectores

a <- c(4, 6, 8, 10)
b <- c(3, 5, 7, 9)

d<-c(a,b) #crea un vector a partir de 2 vectores ya creados

d

length(d)
a + b

#filtrar elementros en una matriz
matriz4

matriz4[matriz4>14]

which(matriz4 !=4 & matriz4 <= 6) # Regresa el valor de indice y retorna un array con los valores que cumplan la condicion 

?which

#String es mandante. Es mas facil convertir un numeric a string que un string a un numeric
x <-c("a", 34, "c", 34)
x

#DATA FRAME

#No valores, son observaciones 
mi_df <- data.frame(
  "entero" = 1:4, 
  "factor" = c("a", "b", "c", "d"), 
  "numero" = c(1.2, 3.4, 4.5, 5.6),
  "cadena" = as.character(c("a", "b", "c", "d")),
  "valor" = matrix(1:4, nco = 2, nrow = 2)
)

mi_df

dim(mi_df) #dimensiones del df
length(mi_df) ## El largo de un data frame es igual a su número de columnas
names(mi_df) # names() nos permite ver los nombres de las columnas
class(mi_df) # La clase de un data frame es data.frame


#• Manipulación de datos con Dplyr

install.packages("dplyr")
install.packages("dbplyr")
install.packages("dslabs")
library(dbplyr)
library(dplyr)
library(dslabs)

#visualizacion del dataframe murders
murders

#funciones para analizar un objeto
dim(murders) # numero de filas, con numero de columnas 
names(murders) #regresa las columnas del dataframe
class(murders) #verifica el tipo de dato de murders
str(murders) #regresa informacion del dataframe

head(murders) #regresa los primeros elementos (6) del dataframe
tail(murders) #regresa los ultimos elementos (6)del dataframe

summary(murders)

#descriptor $ : permite acceder a las columnas de un dataframe

murders$population # vaciar en solo una variable

murders$state #


pop<-murders$population 

class(pop)
length(pop) 

murders
murders[25,1]

murders[2:3,]

murders[,4:5]

murders[14:17,3:4]

#Filtrar 
murders[murders$region == "west", ]

my_df<-murders

my_df


#listas

record = list(name = "John Doe",
              student_id = 1234,
              grades = c(95,82,91,97,93),
              final_grade = "A")



record

class(record)
str(record)
dim(record) #lista

dim(murders) #data frame

record$name

record[1]


murders


new_table<- select(murders, state, region,  total) # seleccionar el estado total

new_table

filter(new_table, total<=300) #filtra el campo total menor o igual a 300



#• Graficación básica

x<-murders$population / 10 **6
y<-murders$total

plot(x,y)

with(murders,plot(population,total))


#HISTOGRAMAS

x<- with(murders,total / population *1)
hist(x)



#--------------------------
#Parte 2
#I. Listas,crea una lista con la siguiente información

mialumna <- list(nombre = "Paty", no.materias = 3, calif.materias = c(10, 7, 9))
mialumna

mialumna$nombre #extrae el nompre de la lista
mialumna$calif.materias[1]#extrae la calificacion 1 de la lista dentro de otra lista
mialumna$calif.materias[2]
mialumna$calif.materias[3]

#II. Data frames, creando data frames
x <- 6:8
x
y <- c("A", "B", "C")

misgrupos <- data.frame(alumnos = x, nivel = y)
str(misgrupos)

misgrupos

#a) Extrae la información del df igual que con las matrices:
misgrupos[1]
misgrupos[,1]
misgrupos$nivel

#b) Calcula algunos estadísticos básicos:
  mean(misgrupos$alumnos)
  max(misgrupos$alumnos)

#c) Agregar un mensaje con la función paste:
  paste("La media de alumnos es:", mean(misgrupos$alumnos), " fin del ejemplo")

#d) Inspecciona a detalle el df utilizando summary:
  summary(misgrupos)
  
#e) Obtener la dimensión:
  dim(misgrupos)
  
#f) Agrega una columna extra con datos:
  misgrupos$edificio <- c("10", "11", "12")
  misgrupos
  
  misgrupos$colegiatura <- c(200, 250, 300)
  misgrupos  
#g) Eliminar una columna:
  
  misgrupos$nivel <- NULL
  misgrupos 
  
  
  
  
  
  #ACTIVIDAD 4
  #Los plots se pueden guardar como objetos con ggplot2. Una vez que instalaste el ggplot2 
  #como se indicó en el prework, podrás asociar un conjunto 
  #de datos con un objeto de trazado como este:
  
 # p <- ggplot(data = murders)
  #p
  plot(misgrupos$alumnos,misgrupos$edificio)
  
  x<-murders$population / 10^6
  y<-murders$total
  
  plot(x,y)
  
  with(murders, plot(population,total))
  
  x<-with(murders, total/population)
  
  hist(x) #histograma
  barplot(x,y)
  
  
  a<-c(2,4,6,8,10)
  b<-c(12,14,16,18,20)
  barplot(a,b)
  
  pie(a)
  
