#Para comparar las secuencias de nucleótidos de la región rbcL entre la especie Nototriche phyllanthos y Malvastrum .
# Comparar la frecuencia de bases entre diferentes regiones y entre diferentes especies
# Construir dataframes que nos ilustren más facilmente estas comparaciones

# Instalar el paquete ape para que R pueda leer .fasta

install.packages("ape", dependencies = T)
library(ape)

# Establecer el directorio de trabajo en la carpeta Scripts/ dentro de la carpeta
# Systematics Nototriche

setwd("C:/Users/Emilio Trujillo/Desktop/SystematicsNototriche/Scripts")
  
  #Para comprobar que estamos en el directorio correcto

getwd()

# Cargar las secuencias a objetos en RStudio

SeqNotorbcl = read.FASTA("N3_rb_rbcLaF.fasta", type = "DNA")
SeqMalvarbcl = read.FASTA("Mv_rb_rbcl.fasta", type = "DNA")

SeqNototrnl = read.FASTA("N3_TRNL.fasta", type = "DNA")
SeqMalvatrnl = read.FASTA("Mv_TrnL.fa", type = "DNA")

# Convertir las secuencias en bases con caracteres

BaseMalvarbcl = as.character(SeqMalvarbcl)
BaseNotorbcl = as.character(SeqNotorbcl)

BaseMalvaTRNL = as.character(SeqNototrnl)
BaseNotoTRNL = as.character(SeqMalvatrnl)

#Creas las base freqs de las regiones

BaseFreqNotoTRNL = base.freq(SeqNototrnl)
BaseFreqMalvaTRNL = base.freq(SeqMalvatrnl)

BaseFreqNotoRBCL =base.freq(SeqNotorbcl)
BaseFreqMalvaRBCL = base.freq(SeqMalvarbcl)

# Crear un data.frame con estas frecuencias

DataFrameTRNL=
data.frame( FrecuenciaNoto = base.freq(SeqNototrnl), FrecuenciaMalva = base.freq(SeqMalvatrnl))

DataframeRBCL =
data.frame(FrecuenciaNoto = base.freq(SeqNotorbcl), FrecuenciaMalva = base.freq(SeqMalvarbcl))


# Para comparar la frecuencias de bases entre diferentes regiones de la misma especie

Compa_Noto_RBCL_TRNL =
 data.frame( NOTOTRNL = base.freq(SeqNototrnl), NOTORBCL = base.freq(SeqNotorbcl))
  print(Compa_Noto_RBCL_TRNL)
  
  
  Compa_Malva_RBCL_TRNL= 
    data.frame( MALVATRNL = base.freq(SeqMalvatrnl), MALVARBCL = base.freq(SeqMalvarbcl))
  print(Compa_Malva_RBCL_TRNL)
  
# Print de estas comparaciones

  print(Compa_Noto_RBCL_TRNL)
  print(Compa_Malva_RBCL_TRNL)
  
# Para crear un plot que posea las 4 frecuencias de los nucléotidos de las
# regiones seleccionadas
  
# Para dividir la pantalla de los plots
  
par(mfrow=c(2, 2))

#Plot 1

plot(Compa_Malva_RBCL_TRNL$MALVATRNL, pch = 19, xaxt = "n", ylab = "Frecuencia bases", 
     xlab = "Base", main = "Frecuencia de bases en región trnL M. coromandelianum")
axis(1, at = c(-2, 2),
     labels = c("Texto", "C"))
axis(1, at = c(-2, 1),
     labels = c("Texto", "A"))
axis(1, at = c(-2, 3),
     labels = c("Texto", "T"))
axis(1, at = c(-2, 4),
     labels = c("Texto", "G"))

#Plot 2
plot(Compa_Malva_RBCL_TRNL$MALVARBCL, pch = 19, xaxt = "n", ylab = "Frecuencia bases", 
     xlab = "Base", main = "Frecuencia de bases en región rbcL M. coromandelianum")
axis(1, at = c(-2, 2),
     labels = c("Texto", "C"))
axis(1, at = c(-2, 1),
     labels = c("Texto", "A"))
axis(1, at = c(-2, 3),
     labels = c("Texto", "T"))
axis(1, at = c(-2, 4),
     labels = c("Texto", "G"))

#Plot 3

plot(Compa_Noto_RBCL_TRNL$NOTOTRNL, pch = 19, xaxt = "n", ylab = "Frecuencia bases", 
     xlab = "Base", main = "Frecuencia de bases en región trnL N. pyllanthos")
axis(1, at = c(-2, 2),
     labels = c("Texto", "C"))
axis(1, at = c(-2, 1),
     labels = c("Texto", "A"))
axis(1, at = c(-2, 3),
     labels = c("Texto", "T"))
axis(1, at = c(-2, 4),
     labels = c("Texto", "G"))

#Plot 4

plot(Compa_Noto_RBCL_TRNL$NOTORBCL, pch = 19, xaxt = "n", ylab = "Frecuencia bases", 
     xlab = "Base", main = "Frecuencia de bases en región rbcL N. pyllanthos")
axis(1, at = c(-2, 2),
     labels = c("Texto", "C"))
axis(1, at = c(-2, 1),
     labels = c("Texto", "A"))
axis(1, at = c(-2, 3),
     labels = c("Texto", "T"))
axis(1, at = c(-2, 4),
     labels = c("Texto", "G"))


