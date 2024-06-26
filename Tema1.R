
# TEMA 1 R: Generalidades de R

# Variables

# R es case sensitive : hace diferencia entre mayusculas y minusculas

# <- operador de asignacion

A<-78  
a<-56

897->num3

a.1<-89
a.2<-74

cantidad1 <-500
cantidad2 <- 200
presupuesto <- 0


pResupuesto <- presupuesto + cantidad2

saludo <- "hola a todos"
num1 <-"89"
print(saludo) #print funcion que visualiza los datos en consola



#Variable: espacio en memoria declarado en un lenguaje de programacion;
# se le asigna un  nombre y su valor puede cambiar

edad<-15

#CONSTANTES: son objetos en memoria, con un nombre, pero que su valor no 
#cambia. Las constantes se escriben con mayuscula

PI<-3.1416

#----------------------------------------------
#algunas funciones de R

ls() #muestra los objetos (variables/constantes...) que tenemos declarados en memoria

ls(pat ="dad") #Recibe parametro

rm(A) #borra una variable del entorno



rm(list=ls()) #borra todas las variables declaradas en el entorno

help("rm") # la funcion help muestra la ayuda de la funcion que se e
#escriba como parametro


a<- 1
b<- 1
c<- -1



resultado <- (-b + sqrt(b**2 - 4*a*c) ) / ( 2*a )

resultado

print(round(resultado,2))# funcion de redondeo de decimales

ceiling(3.1)#devuelve el proximo valor entero al numero elegido

trunc(45.68)

floor(45.68)

#----------------------------------------------------------------------
#operadores aritmeticos

v1 <-12
v2 <-4

print(v1 + v2)#suma
print(v1 - v2)#resta
print(v1 * v2)#multiplicacion
print(v1 / v2)#division
print(v1 ** v2)#potencia
print(v1 %% v2) #modulo de una division

#operadores relacionales: hacen una comparacion y regresan TRUE o FALSE

v1 < v2 # FALSE  menor que
v1 <= v2 # FALSE menor o igual que
v1 > v2 # TRUE mayor que
v1 >= v2 # TRUE mayor o igual que
v1 == v2 # FALSE igual a 
v1 != v2 # TRUE diferente a 

print()






















