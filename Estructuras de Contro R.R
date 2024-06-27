
rm(list = ls()) #limpia las  variables 

#La función paste() une todos los vectores de caracteres que se le 
#suministran y construye una sola cadena de caracteres. Muy útil en gráficas.


paste("hola","mundo", 5+6, 100-10) # otro ejemplo de la funcion paste

#Estructuras de control y ciclos en R

#Estructura if,else

if(40>300){
    "descuento"
}else{
  "sin descuento"
}

## [1] "sin descuento"

2. Se requiere calcular la temperatura promedio anual de una ciudad para decidir si 
se le considerará para aplicarle una tarifa eléctrica preferencial. Se utilizará una 
función que calcule el promedio y, dependiendo del resultado, se enviará un 
mensaje específico.

#Parte 1:
# se define o crea la funcion promedio

promedio <- function(m) {
  mean(m) #mean calcula la  media
}

## [1] 33.17# manda llamar la funcion y le pasa como parametro un vector
promedio(c(26, 31, 22, 25, 26, 20, 18, 13, 05, 08, 10, 22))


## [1] 18.83


Parte 2. Usando la base anterior, si el promedio de temperatura sobrepasa 
los 26 grados, se puede decir que aplica la tarifa preferencial para esa ciudad.

promedio <- function(temperaturas) 
{
  media <- mean(temperaturas)
  texto <- paste0("Para la temperatura promedio de: ", media, ", ")
  
  if(media > 26) {
    print(paste0(texto, "aplica tarifa preferencial "))
  } else {
    print(paste0(texto, "NO aplica tarifa preferencial "))
  }
}


promedio(c(25, 30, 27, 35, 26, 40, 38, 33, 29, 36, 37, 42))


## [1] "aplica tarifa preferencial"

promedio(c(26, 31, 22, 25, 26, 20, 18, 13, 05, 08, 10, 22))
## [1] "no aplica tarifa preferencial"


#Estructura Ifelse()

##Si lo que se necesita es comparar cada uno de los elementos de un vector 
#con una sola llamada, es posible usar la función ifelse(), 
#que permite vectorizar el comando en lugar de 
#escribir una línea de código para cada comparación.

#sintaxis

ifelse(vector + condicion, valor_si_TRUE, valor_si_FALSE)


##Si no se usa ifelse() y se intenta comparar un valor contra los elementos 
#de un vector con if, else, R muestra un mensaje de advertencia (warning) 
#especificando que, al haber más de un elemento, la comparación solo se 
#realizará usando el primero, por lo que el resto de los 
#elementos del vector no serán considerados

if(1:10 < 3) {
  "Verdadero"
}

ifelse(1:10 <=3 ,"Verdadero","Falso")


num<-10:28
num

ifelse(num%%2==0,"PAR","IMPAR")

num
ifelse(num%%2==0 & num%%3==0,"ACEPTADO","NO ACEPTADO")

ifelse(num%%2==0 & num%%3==0,"primo","NO primo")

#--------------------------------------------------------------
#BUCLES - LOOP

#FOR: Ejecuta una instruccion para cada uno de los elementos dentro de un conjunto
#de datos

#sintaxis

for(elmento in conjunto_datos){
  instrucciones/operanciones con el elemento
}

#Ejemplo 1


for (year in 2010:2019) {
  print(paste("El año  es: ", year))
}

#Ejemplo 2

for (i in 1:20) {
  if(!i %% 2){ #se salta los numeros pares
    next # avanza al siguiente elemento (i)
  }
  print(i) #imprime los numeros impares
}

# Otros Ejemplos:
  
miArreglo<-1:10

for(i in miArreglo){
 # print(i)
  print(paste(i," * 5 = ", miArreglo[i]*5))
}

for(par in miArreglo){
  print(miArreglo[par]%%2)
}

mi_objeto<-1:20

for(i in mi_objeto){
  if (i%%2==0) {
    print(i)
  }
}
# Código R para encontrar números primos y compuestos hasta 100
# Inicializa el numero n
n=100

# organiza la secuencia
x = seq(1, n)
x

# crea un lugar vacío para almacenar los números
prime_numbers=c()

composite_numbers = c()


for (i in seq(2, n)) {
  if (any(x == i)) {
    
    # Los números primos se almacenan en un orden secuencial.
    prime_numbers = c(prime_numbers, i)
    x = c(x[(x %% i) != 0], i)
  }
  
  else{
    
    # Los números compuestos se almacenan en un orden de secuencia.
    composite_numbers = c(composite_numbers, i)
  }
}

# imprime las series
print("prime_numbers")
print(prime_numbers)

print("composite_numbers")

print(composite_numbers)
#------------------------------------------------------
#  WHILE: Se repite el ciclo mientras una condicion se cumpla

#sintaxis

while(condicion){
  operaciones
}

limite <-11
incremento<-0

while(incremento <= limite){
  print("aun no se cumple")
  incremento <- incremento + 1
  print(incremento)
  
}

 #ESC se forza a terminar el ciclo
while(0==0){
  print("presiona ESC  para salir del ciclo")
  
}

#BREAK y Next en R

for(i in 1:10){
  if(i>=5){
    break #se sale del ciclo for /while
  }
  print(i)
}

base<-10

while(base>3){
  print(base)
  if (base == 5){
    break
  }
  base<-base - 1
}

base


#NEXT

for(i in 1:6){
  if(i==5){
    next
  }
  print(i)
}

#repeat
variable<-0
mi_vector<- 0

#mi_vector<-c(4,5,8,9,7,6,3,2,10)

repeat{
  variable<-variable + 1
  if(variable == 3){
    break
  }
  mi_vector<-mi_vector + variable
  print(mi_vector)
  
}

variable


#-------------------------------------
#llena vector vacio
#-------------------------------------------
mi_vector<-NULL
dado <- 1:6
dado

for(x in dado) {
  mi_vector[x] <- x *2
}
mi_vector


#-------------------------------------

variable<-0
mi_vector<-NULL
mi_vector2<-NULL
repeat{
  variable<-variable+ 1
  if (variable == 15) {
    break
  }
  mi_vector<-append(mi_vector,variable)
  
  mi_vector2[length(mi_vector2) + 1] <- variable*3
}

mi_vector

mi_vector2






