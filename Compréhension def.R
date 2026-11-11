setwd("C:/Users/mathe/OneDrive/Bureau/Tp/Inférence Causale")
rm(list=ls())

####################################################################################
#Construction exemple effet causale
####################################################################################

#nombre d'indvidues
n=20

#Action a binaire
#Résultats contrefactuelle Y_0 et Y_1
contrefact=data.frame(Y_0 = rbinom(n,1,1/2),Y_1=rbinom(n,1,1/4))
contrefact

#Expérience aléatoire
#A ~ B(1/2)
A=rbinom(n,1,1/2)

#A chaque individu on lui donne Y_A de sa ligne
index=cbind(1:n,A+1)

Y=contrefact[index]

#Matrice de résultat idéal
mat_ideal=cbind(1:n,A,Y,contrefact)
mat_ideal

#Matrice de l'expérience
##On fait une matrice avec des * partout
df_vide=mat_ideal[,4:ncol(mat_ideal)]
df_vide[,]="*"
df_vide[index]=Y

mat_exp=cbind(1:n,A,Y,df_vide)
mat_exp
kable(mat_exp,format="markdown")
kable(mat_ideal,format="markdown")
kable(mat_ideal[,c(T,F,F,T,T)],format="markdown")
####################################################################################
#Calcule effet causale
####################################################################################
ef_caus_réel=0.25
ef_caus_ideal=mean(contrefact[,1])-mean(contrefact[,2])
ef_caus_exp= suppressWarnings( mean(as.numeric(mat_exp[,4]),na.rm=TRUE)-mean(as.numeric(mat_exp[,5]),na.rm=TRUE) )


caus=function(x){
  #nombre d'indvidues
  n=100
  
  #Action a binaire
  #Résultats contrefactuelle Y_0 et Y_1
  contrefact=data.frame(Y_0 = rbinom(n,1,1/2),Y_1=rbinom(n,1,1/4))
  contrefact
  
  #Expérience aléatoire
  #A ~ B(1/2)
  A=rbinom(n,1,1/2)
  
  #A chaque individu on lui donne Y_A de sa ligne
  index=cbind(1:n,A+1)
  
  Y=contrefact[index]
  
  #Matrice de l'expérience
  ##On fait une matrice avec des * partout
  df_vide=mat_ideal[,3:ncol(mat_ideal)]
  df_vide[,]="*"
  df_vide[index]=Y
  
  mat_exp=cbind(A,Y,df_vide)
  suppressWarnings(mean(as.numeric(mat_exp[,3]),na.rm=TRUE)-mean(as.numeric(mat_exp[,4]),na.rm=TRUE))
}

boxplot(replicate(10,caus()))
abline(a=0.25,b=0,lwd=3,col="red")


