importdata=function(data,ncol=ncol)
{
  x = data
  y=unlist(strsplit(x," "))
  t=gsub(" ","/",y)
  h=as.numeric(as.character(y))
  return(as.data.frame(matrix(h,byrow=T,ncol=ncol)))
  
}

importdata("1 2 3 4 5 6",ncol=2)

#################

dataimport=function(data){
  t=unlist(strsplit(data," "))
  ta=gsub(" ","/",t)
  h=as.numeric(as.character(ta))
  f=matrix(h,ncol = 10,byrow = T)
  d=as.data.frame(f)
  return(d)
}

dataimport(a)
a=c("1 128 37 1870 6.66 33 142 50 8640 7.17",
    "2 204 22 130 6.15 34 104 62 350 6.60",
    "3 202 16 310 7.00 35 287 31 230 7.00",
    "4 197 65 570 6.25 36 41 66 1620 3.91",
    "5 96 76 2050 3.81 37 312 11 190 6.70",
    "6 209 26 200 6.44 38 77 88 2090 4.20",
    "7 170 45 670 6.19 39 142 22 900 5.43",
    "8 240 29 300 5.89 40 262 22 230 6.50",
    "9 241 11 120 5.89 41 215 12 140 6.25",
    "10 55 55 290 2.36 42 246 9 330 7.10",
    "11 75 87 1180 3.93 43 191 31 1010 7.10",
    "12 129 55 900 5.99 44 182 19 300 7.00",
    "13 24 93 1730 3.50 45 37 88 1730 3.46",
    "14 165 31 1150 7.41 46 103 35 780 5.66",
    "15 94 77 1160 4.21 47 67 85 1300 4.82",
    "16 96 80 1270 5.00 48 143 78 930 5.00",
    "17 148 30 580 5.27 49 83 85 690 4.74",
    "18 98 69 660 5.21 50 223 33 200 8.49",
    "19 161 43 420 6.50 51 240 19 450 6.50",
    "20 118 47 1080 6.12 52 312 21 280 6.50",
    "21 269 17 290 6.19 53 12 79 4430 1.69",
    "22 189 35 270 5.05 54 52 83 270 3.25",
    "23 126 58 560 6.16 55 79 43 1340 7.17",
    "24 12 81 4240 1.80 56 61 88 670 3.52",
    "25 167 29 240 4.75 57 168 28 410 6.09",
    "26 135 65 430 4.10 58 28 95 4370 2.86",
    "27 107 87 3020 6.66 59 121 41 1310 4.88",
    "28 72 63 1420 7.28 60 115 62 1470 3.89",
    "29 128 49 420 8.12 61 186 45 300 6.90",
    "30 27 63 19830 5.23 62 47 85 3630 4.10",
    "31 152 84 420 5.79 63 178 45 220 6.09",
    "32 224 23 530 6.50 64 142 67 560 7.20")
gsub(" ",",",a)
t=unlist(strsplit(a," "))
t
ta=gsub(" ","/",t)
h=as.numeric(as.character(ta))
h
typeof(h)
f=matrix(h,ncol = 10,byrow = T)
f
d=as.data.frame(f)
d
names(d)=c("Observation", "CM", "FLFP", "PGNP", "TFR", "Observation", "CM", "FLFP", "PGNP", "TFR")
d
raw_data=d[,1:5]
b=d[,6:10]
final_data=rbind(raw_data,b)
final_data

