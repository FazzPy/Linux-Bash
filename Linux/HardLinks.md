# Linux | Sembolik ve Katı Link Kavramları

- Sembolik link’ler bir dosya için sadece kısayol durumu oluşturur ve içeriğine erişim için sadece yönlendirme yaparlar. (Bağ adı da verilir.)

- Katı Link’ler ise bir dosyanın, birden fazla yere kopyalanmasını ve erişimini sağlarlar. Orijinal
dosyanın silinmesiyle veri kaybolmaz.

- Dosya ve dizinler, benzersiz olan numaralara (ID’lere) sahiptirler. Her dosya ve dizin benzersiz ID’lere
sahiptir. Bu yapının adı inode (düğüm)’dur. Dosya ve dizinlerin ID’lerine de inode ID’si denir.

Inode(düğüm), dosyanın sahibi, oluşturulma tarihi, boyutu, tipi, erişim hakları, en son erişim tarihi ve en son değişikliklerin yapıldığı tarih gibi birçok meta verileri içeren yapıdır. Yani biz herhangi bir dosya oluşturduğumuzda disk üzerinde 1 inode yer kaplamaktadır. Bununla ilgili olarak inode tablosunu görmek için konsola df -i komutumuzu verelim.

- Sembolik linkler için inode ID’ler benzersizdir; fakat katı linkler için benzeşiktir.

s –li <dosyaadi> Inode ID’leri gösterir.<br>
ln <path/dosyaadı> Hard Link oluşturur.<br>
ln -s <path/dosyaadı> Symbolic Link oluşturur.<br>
find -type f -links +1 -ls Sistemdeki hard link’leri gösterir.<br>