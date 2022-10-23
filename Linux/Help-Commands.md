# Linux | Terminal Komutları | Yardım Komutları

**komut --help**<br>
**help komut**
  
> Komutun parametre ve argümanı hakkında kullanım bilgisi verir. Bazen tanıtım bilgisi (açıklama) de içerebilir.

**man komut**

> Kılavuz sayfalarıdır. Manuel Pages anlamındadır. Yardım alma dosyalarıdır.

*Man dosyaları yapısal olarak aşağıdaki gibidir:*

- NAME: Komutun ismi ve açıklaması.
- SYNOPSIS: Komutun nasıl kullanılacağı.
- DESCRIPTION: Komutun işlevi hakkında detaylı bilgi.
- EXAMPLES: Kullanımıyla ilgili örnekler.
- SEE ALSO: İlgili başlıklar.


/usr/share/man path’i (yolu) altında bulunurlar.<br>
man1: Genel kullanıcı programları hakkındadır.<br>
man2: Sistem programları hk.<br>
man3: Kütüphane fonksiyonları hk.<br>
man4: Özel dosyalar hk.<br>
man5: Dosya biçimleri hk.<br>
man6: Oyunlar ve ekran koruyucuları hk.<br>
man7: Diğer kategorideki çeşitli komutlar hk.<br>
man8: Sistem yönetimi ve bakım hk.<br>

**apropos KomutunBirKısmı**

> Verilen ifadenin geçtiği man dosyalarını listeler.

**whatis komut**

> Komut hakkında kısa hatırlatıcı bilgi ve hangi man dosyasında bulunduğunu gösterir

Joker (wildcard) karakter ile kullanılmak istendiğinde -w parametresi eklenmelidir.
Örn; whatis –w <KomutunBirKısmı> * gibi.

