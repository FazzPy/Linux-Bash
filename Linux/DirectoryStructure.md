# Fazz | Linux Dizin Yapısı

<h3>Root (Kök) Dizin [/] işareti ile gösterilir.</h3>

* [/bin] Kullanıcı komutları : Terminal/Shell'de kullanabilecek komutlar burada yer alır.
* [/sbin] Sistem Komutları : Root kullanıcısı tarafından çalıştırılabilir sistem komutları buradadır.
* [/etc] Konfigürasyon Dosyaları : Tüm kullanıcı ve sistemin ayarları dosyalar halinde buradadır. Örn; resolv.conf
* [/dev] Donanım Dosyaları : Donanımları temsil eden dosyalar buradadır. Diskler gibi. Örn; dev/sda5
* [/porc] Süreç Bilgileri : işletim sistemi işlem süreçlerinin anlık tutulduğu sanal dosyalar buradadır. Örn; proc/meminfo
* [/var] Değişken Dosyalar : Event Log (Olay Kayıtları) gibi değişen dosyalar burada tutulur. Örn; /var/log/auth.log
* [/tmp] Geçici Dosyalar : Geçici olarak oluşturulması gereken, silinecek olan dosyalar buradadır.
* [/home] Kullanıcılar için home dizinleri : Kullanıcıların uygulamaları ve yazma hakkına sahip dosyaları buradadır. ~ işareti ile gösterilir.
* [/mnt] Geçici kullanımdaki dosya sistemleri : Geçici mount edilmiş dosya sistemlerinin mount edildiği dizindir.
* [/opt] Uygulamaların kütüphane dosyaları : Kendi kütüphanesiyle gelen uygulamaların kütüphane dosyaları buradadır. Örn; /opt/winrar
* [/srv] Servis dosyaları : İşletim sisteminde çalışan tüm servis dosyaları buradadır.
* [/usr] Uygulama dosyaları : Çalıştırılabilir dosyalar ve kullanıcı uygulamalarının depolandığı dizindir.
* [/lost+found] Silinen dosyalar : Silinen veya kesinti nedeniyle çalışması yarıda kalmış dosyaların tutulduğu dizindir.
* [/boot] Açılış dosyaları : Açılış için gerekli bilgiler ve Kernel (Çekirdek) imajı burada bulunur. Örn; initrd.img
* [/lib] Sistem kütüphaneleri : Kütüphane ve kernel (çekirdek) modülleri dosyaları buradadır.
* [/media] Kaldırılabilir donanımlar : Flash bellek, USB aygıtları, CD-ROM gibi kaldırılabilir donanımların bilgi dosyaları buradadır. 

<h3>Dosya Sistemi ve Dizin Yapısı Hakkında
Unutulmaması Gerekenler</h3>

**- Program dosyaları Windows’taki gibi tek bir klasör (Program Files) altında toplanmaz.
Örn; dil dosyaları /usr/share/locale altında; doküman dosyaları /usr/share/doc altında toplanır.**

**Home dizini, Windows’taki Documents and Sharing veya Application klasörleri görevini görür.**

**Home dizini için ~ işareti kullanılır. Bu dizindeki dosyalara ~/oku.txt şeklindeki gibi erişilebilir.**

**.so dosyaları Windows’taki .dll’ler gibi kütüphane dosyalarıdır. /lib ve /usr/lib dizininde toplanırlar.**

**/tmp ve /var/tmp dizinleri Windows’taki Temporary işlevindedir.**

**/usr ve /opt dizinleri arasındaki temel fark; /usr’nin sistem; /opt’nin 3.parti uygulamaları tarafından
kullanılmasıdır.**

**Windows’takinin aksine dosya isimlerinde küçük-büyük harf duyarlılığı (case sensitive) vardır.
Örn; Fazz, fAzz, FaZZ ismindeki dosya veya klasörler aynı yerde bulunabilir, oluşturulabilir.**

**Linux’ta donanımlar dahil her şeyin dosyalardan oluştuğunu unutmayın.**

