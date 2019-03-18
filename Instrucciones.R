install.packages("stringr")
library(stringr)
data1<-read.csv("data/tema1/auto-mpg.csv",header=T,stringsAsFactors = F)
###correlativo##########
data1$id<-seq(1,nrow(data1))

###### concatenar######
data1$model<-paste(paste(19,data1$model_year),strrep(0,8-str_length(data1$model_year)))

#####blancos y espacios######
data1$model_ajustado<-gsub(" ","",data1$model)
data1$indicador<- gregexpr(7,data1$model_ajustado)
data1$indicador[data1$indicador=='0']<-NA
