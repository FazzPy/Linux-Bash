# Linux | Arşiv komutları

<h3>Arşivleme</h3>

**tar cf <dosya.tar> <dosyalar>** : Dosyaları arşivleme komutudur. Sıkıştırma uygulamaz. c=create, f=file’ı temsil eder.

**tar xvf <dosya.tar>** : Arşivten çıkarma komutudur. x= extract, v=verbose, f=file’ı temsil eder.
  
<h3>Sıkıştırma</h3>
  
**gzip <dosya>** : Dosyaları sıkıştırma komutudur. Oluşan dosya, .gz uzantısı alır.
  
**gunzip <dosya.gz>** : Gz dosyalarını çıkarma komutudur.

**bzip2 <dosya>** : Dosya sıkıştırma komutudur. Oluşan dosya, .bz2 uzantısı olur.

**bunzip2 <dosya.bz2>** : Bz2 dosyalarını çıkarma komutudur.

<h3>Sıkıştırarak Arşivleme</h3>
  
**tar czvf <dosya.tgz/tar.gz> <dosyalar>** : Dosyaları Gzip kullanarak sıkıştırma ve arşivleme komutudur.

**tar xzvf <dosya.tgz/tar.gz>** : Tgz dosyalarını çıkarma komutudur.
  
**tar cjvf <dosya.tar.bz2> <dosyalar>** : Dosyaları Bzip2 kullanarak sıkıştırma ve arşivleme komutudur.

**tar xjvf <dosya.tar.bz2>** : bz2 dosyalarını çıkarma komutudur.
  
<h3>İçerik Okuma</h3>
  
**zcat <dosya.tgz>** : Gzip dosyalarının içeriği okuma/listemele komutudur.
  
**bzcat <dosya.bz2>** : Bzip2 dosyalarının içeriği okuma/listemele komutudur.
  
<h3>Zip ve Rar Sıkıştırma/Açma</h3>

**zip <dosya.zip> <dosyalar>** : Dosyaları zip kullanarak sıkıştırma komutudur.

**unzip <dosya.zip>** : Zip dosylarını çıkarma komutudur.
  
**unrar <dosya.rar>** : Rar dosyalarını çıkarma komutudur. 
