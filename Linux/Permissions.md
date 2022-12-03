# Linux | Dosya ve Dizin Erişim Yetkileri

- Dosya ve dizinlerin (nesnelerin) erişim hakları ls –l <nesne> komutuyla
görüntülenebilir.<br>

- Yetkilerdeki ifadeler, dosya veya dizinler (nesneler) için şöyle anlamlandırılır:

<b>d : Directory anlamındadır. Nesnenin dizin olduğunu belirtir.</b><br>
<b>- : Nesnenin bir dosya (file) olduğunu (dizin/directory) olmadığını) belirtir.</b><br>
<b>r : Read anlamındadır. Nesnede okuma yetkisi bulunduğunu belirtir.</b><br>
<b>w : Write anlamındadır. Nesnede yazma yetkisi bulunduğunu belirtir.</b><br>
<b>x : Execute anlamındadır. Nesnede çalıştırma yetkisi bulunduğunu belirtir.</b><br>

- Örneğin test isimli bir txt dosyasına, herkes için okuma izni vermek istersek;

<b>chmod a+r test.txt</b>

- Yetkiler, rakamlarla da sayısal olarak ifade edilebilirler.

r : 4<br>
w : 2<br>
x : 1<br>

- Chmod komutuna sadece sayısal değer verilmesi yeterlidir.
- Her bir rakam, bir bölümü temsil edecektir.

- Örn; chmod 777 test.txt (Test.txt dosyasına kullanıcı, grup ve diğerleri için rwx yetkisi verilmiş olur.)

chmod 755 test.txt (Test.txt dosyasına kullanıcı için rwx, grup için r-x ve diğerleri için r-x yetkisi verilmiş olur.)

chmod 536 test.txt (Test.txt dosyasına kullanıcı için r-x, grup için -wx ve diğerleri için rw- yetkisi verilmiş olur.)

rwx 7 (4+2+1)<br>
rw- 6 (4+2+0)<br>
r-x 5 (4+0+1)<br>
r-- 4 (4+0+0)<br>
-wx 3 (0+2+1)<br>
-w- 2 (0+2+0)<br>
--x 1 (0+0+1)<br>
