# Linux | Bilgi alma komutları

<b>lsb_release -a cat /etc/*release</b> : Kullanılan Linux dağıtımı (distro’su) hakkında ayrıntılı bilgi verir.

**cat /etc/issue** : Kullanılan Linux dağıtımnın adını gösterir.

**uname –a** : Kullanılan Linux dağıtımnın çekirdek (kernel) adını ve versiyonu hakkında bilgi verir. -n, -m, -r parametreleriyle daha ayrıntısız bilgi alınabilir.

**hostname** : Bilgisayar adını (hostname’i) verir.

**w, who, whoami** : w komutu, aktif kullanıcı, oturum açma (login) saati ve son açtığı uygulama bilgisi verir. Who komutu, aktif kullanıcı ve login saatini verir.
Whoami komutu, aktif kullanıcı bilgisi verir. -b ve –r parametleriyle de kullanılır.

**uptime** : Sistemin yüklendiğinden itibaren ne kadar saat açık kaldığını gösterir.

**whereis <argüman>** : İlgili komut, dosya veya klasörün path’ini (yolunu) ve man dosyasının yerini gösterir. -b, -m ve –s paremetreleriyle de kullanılır.

**which <argüman>** : Komutların yerini gösterir.

**cat /proc/cpuinfo** : CPU hakkında detaylı bilgi verir.

**cat /proc/meminfo** : RAM hakkında detaylı bilgi verir.

**df –h –T** ve **lsblk** : Fiziksel ve mantıksal disk kullanımı ve dosya sistemi hakkında bilgi verir.

**du –h** : Mevcut klasör ve altındaki klasör, dosya boyutları hakkında bilgi verir.

**vmstat** : Sistemin anlık performansı hakkında genel bilgi verir.

**cal** : Calendar (takvim) anlamındadır. Bulunduğumuz ayın takvimini görüntüler. 

**date** : Günün tarih, saat ve dilimini verir.
