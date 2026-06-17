interval_konfidensi<-function(p_topi, n, alpha){
  
#validasi proporsi
if(p_topi<0||p_topi>1){
  cat("error: proporsi harus berada pada rentang 0 dan 1.\n")
  return()
}

#validasi alpha
if(alpha == 0.10){
  z<-1.645
} else if(alpha == 0.05){
  z<-1.96
} else{
  cat("error: nilai alpha harus 0.05 atau 0.10.\n")
  return()
}

#menghitung margin of error
margin_error<-z*sqrt((p_topi*(1-p_topi))/n)

#menghitung interval konnfidensi
batas_bawah<-p_topi - margin_error
batas_atas<-p_topi + margin_error

cat("batas bawah =",batas_bawah,"\n")
cat("batas atas =",batas_atas,"\n")
cat("interval konfidensi =(",batas_bawah,",",batas_atas,")\n")
}

#program utama
p_topi<-as.numeric(readline("Masukkan proporsi sampel(p_hat):"))
n<-as.numeric(readline("Masukkan ukuran sampel(n):"))
alpha<-as.numeric(readline("Masukkan alpha (0.05 atau 0.10):"))

interval_konfidensi(p_topi,n,alpha)
