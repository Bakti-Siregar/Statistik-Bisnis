# Data Kualitatif

# 0. Interface Data
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
getwd()                                      # periksa direktori project anda saat ini
# setting direktori penyimpanan data
setwd("C:/Users/Bakti/Google Drive/2020-1-Statistika-Bisnis-I/2-Data-Kualitatif-dan-Kuantitatif/dataset") 
data = read.csv("Survey-Bisnis.csv")         # baca file csv lokal (PC kamu)
head(data)                                   # print data data teratas
names(data)                                  # memeriksa nama variabel observasi
dim(data)                                    # memeriksa dimensi data
str(data)                                    # memerikasa struktur data

# Catatan, baca file csv online:
data <- read.csv("https://raw.githubusercontent.com/Bakti-Siregar/Statistik-Bisnis/master/dataset/Survey-Bisnis.csv")
View(data)

# 1. Distribusi Frekuensi Data Kualitatif
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
kota = data$Kota                             # filter data kota saja
frek_kota = table(kota)                      # gunakan "table" untuk menghitung frekuensi survey
frek_kota                                    # melihat hasil
frek_kota = cbind(frek_kota)                 # digunakan untuk mengurutkan data berdasarkan kolom
table(data$Kota, data$Jenis.Bisnis)          # membuat table berdasarakan Kota dan Jenis Bisnis nya

# 2. Distribusi Frekuensi Relatif dari Data Kualitatif
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
frekuensi_relatif=frek_kota/nrow(data)       # menghitung frekuensi relatif
frekuensi_relatif                            # print hasil


# 3. Grafik batang
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
frek_kota = table(kota)                      # gunakan "table" untuk menghitung frekuensi
barplot(frek_kota)                           # terapkan fungsi "barplot"
barplot(frek_kota,col=1:6)                   # terapkan fungsi "barplot" dengan warna
?barplot                                     # untuk informasi lebih lanjut


# 4. Pie chart
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
frekuensi_relatif=frek_kota/nrow(data)       # menghitung frekuensi relatif
pie(frekuensi_relatif)                       # terapkan fungsi "pie" 
pie(frekuensi_relatif,col = 1:6)             # terapkan fungsi "pie" dengan warna
?pie                                         # untuk info lebih lanjut


# 5. Kategori Statistik
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
index_jakarta = kota == "Jakarta"            # vektor indeks logis untuk data Jakarta
kota_jakarta = data[index_jakarta, ]         # mengambil data survey di kota Jakarta
mean(kota_jakarta$Pendapatan.Mingguan.Kotor) # rata-rata pendapatan mingguan di kota Jakarta
tapply(data$Pendapatan.Mingguan.Kotor,
       data$Kota,mean)                       # rata-rata pendapatan mingguan setiap kota




