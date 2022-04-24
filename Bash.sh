#!/bin/bash

#========================================================================================
#Notlar :
#echo "" ile ekrana yazdırılır.
#sleep 1 ile bekleme süresi verilir
#echo $1 $2 ile çalıştırırken parametre alınır
#echo $0 Program adını verir
#echo $$ Process id verir
#echo $USER Programın çalışığı kullanıcıyı söyler
#echo $RANDOM rastgele sayı üretir
#echo $HOSTNAMe programın çalıştığı kullanıcı adını söyler
#Değişken belirleme : degisken1="Selam" Not : Arada boşluk olmayacak önemli
#Kullanıcıdan veri alma : read isim | echo "İsminiz : " $isim
#Kullanıcıdan veri alma 2 : read -p "Kullanıcı adınız : " username | read -sp "Şifre : " password | echo "Hesabınız : " $username $password
#read -sp parametresi ile görünmez şifre girilebilir.
#let yazdığımız ifadenin toplamını döndürür | örnek : let a = "5 + 5" | echo $a
#direkt işlem yapmak için expr | örnek : expr 5 + 5
#echo ${#c2} değişkenin kaç karakterden olduğunu gösterir
#Koşulların sonuna fi konur
# && = AND operatörüdür ve işlemleri yapılabilir
# || = OR operatörüdür ya da işlemleri yapılabilir
# = yerine -eq parametresi eşittir ile aynı işevi görür
# then eğer if doğruysa onu getirir
# -lt ilk parametre ikinci parametreden küçükse anlamına gelir
# -gt ilk parametre ikinci parametreden büyükse anlamına gelir
# birden çok durum söz konusu ise elif kullanılabilir
# özel karakterlerin tamamı ? ile belirtilebilir (!'^%][=] gibi)
#========================================================================================


selamla="Selam!"

echo $0

echo $$

echo $HOSTNAME

echo $1 $2

echo $RANDOM

echo "Merhaba Dünya!"
sleep 1
echo "ilk programım"
sleep 1

echo $selamla

read -p "isminizi bahşedermisiniz ? " isim

echo "İsminiz : " $isim

read -p "Kullanıcı adınız : " username

read -sp "Şifre : " password

echo "Tamamdır!"

echo "Hesabınız : " $username $password

let a=5+5

echo "hesaplama sonucu : " $a

let "a1 = 5 + 4"

echo "ikinci hesaplama sonucu : " $a1
#Not : üstteki ile aynı işlev fakat aralara boşluk koymak için tırnak içinde yazılır

let b=a1++
echo "Üçüncü hesaplama sonucu : " $b

let b1=$a+$a1
echo "Dördüncü hesaplama sonucu : " $b1

expr 5 + 5
#Direkt işem yapar 

expr "2 + 3" #Tırnak içerisinde yazarsak direkt çıktıyı çıkarır işlem yapmaz

expr 5\*5 #Çarpım yapar doğru yazılışıdır

c=$( expr 10 + 5 )
echo $c
#expr değişken atayarak işlem yapılır

c1=$(( 2 + 3 ))
echo $c1
#Daha kolay işlem yapmayı sağlar

c2="Merhaba Dunya"
echo ${#c2}
#Kaç karakterden olduğunu söyler

if [ "merhaba" =  "merhaba" ]
then
    echo "merhaba merhabaya esittir"
else
    echo "merhaba merhabaya esit degildir"
fi

# = yerine -eq parametresi eşittir ile aynı işevi görür

# then eğer if doğruysa onu getirir

# -lt ilk parametre ikinci parametreden küçükse anlamına gelir

# -gt ilk parametre ikinci parametreden büyükse anlamına gelir

# birden çok durum söz konusu ise elif kullanılabilir

if [ "merhabalar" = "merhabalar" ]
then
    echo "Merhabalar"
elif [ "Selamlar" = "Selamla" ]
then
    echo "Selamlar"
else
    echo "Selamlar eşit değildir"
fi

#Koşulların sonuna fi konur

# && = AND operatörüdür ve işlemleri yapılabilir

# || = OR operatörüdür ya da işlemleri yapılabilir

ornek="örnek"

case $ornek in
    "örnek" )
    echo "Örnek doğrudur";;
    "ğ" )
    echo "Örnek yanlıştır";;
    ? )
    echo "Özel karakter girildi"
    # özel karakterlerin tamamı ? ile belirtilebilir (!'^%][=] gibi)
    esac

#Case Örneğidir

#While döngüsü

sayi=1

while [[ $sayi -lt 10 ]]; do
    ((sayi++))
    echo $sayi
done

# C TYPE FOR DÖNGÜSÜ

for (( i = 0; i < 10; i++ )); do
    echo $i
done

# FOR DÖNGÜSÜ

for l in $( ls ); do
    echo $l
done

#RANGE İLE FOR DÖNGÜSÜ

for value in {1..5}; do
    echo $value
    echo "Tamamdır!"
done

# UNTIL

bir=1

until [[ $bir -gt 10 ]]; do
    echo $bir
    ((bir++))
done


#BREAK

for (( i=0; i < 10; + i++ )); do
    if [[ $i -gt 5 ]]; then
        echo "Yoruldum bırakıyorum aga"
        break
    fi
    echo $i
done

#CONTİNUE

for (( i=0; i < 10; i++ )); do
    if [[ $i == 5 ]]; then
        echo "Yoruldum fakat devam etmek zorundayım"
        continue
    fi
done

#SELECT

diller="python bash java c cikis"

secim="Seçim Yapınız : "

select dil in $diller; do
    if [[ $name == "cikis" ]]; then
        break
    fi
    echo $dil "dersine hoşgeldiniz"
    break
    #Break programın devam etmesi için eklendi silinirse sınırsız döngüye girer
done


#FONKSİYONLAR

function ilk {
    echo "İlk fonksiyonum"
}

ilk

function ikinci {
    echo $1
    echo $2
}

ikinci "Parametreli" "Fonksiyon"


function ücüncü {
    local var="Local Degisken"
    var2=3
    echo $var $var2
}

ücüncü

#Terminalde var olan bir komutu çalıştırır

ls() {
    command ls -la
}

ls

echo "Fonksiyonların sonu..."