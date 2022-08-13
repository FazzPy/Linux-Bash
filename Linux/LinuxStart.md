# Fazz | Linux Açılış Süreci

<h3>Çalışma Süreçleri</h3>

1) P.O.S.T : BIOS'tan okuduğu (öğrendiği) donanımlar üzerinde çalışırlık testi yapar.
Başarılıysa üst ebata geçer.
2) M.B.R : BIOS’ta tanımlı ilk disk üzerinde işletim sistemi izi arar
ve açar. Disklerin ilk sektöründeki 512 B’lık alandır.
Diskin dosya sistemi ve işletim sistemi hakkında bilgi
verir. GRUB bilgisi de buradadır.
3) G.R.U.B : Açılışta, işletim sistemi için seçim listesi (menüsü) sağlar. Seçilen
işletim sistemine göre parametereler yüklenerek işletim sistemi açılışı
başlar. Bulunabilmek için MBR bilgisine kendisini de eklemiştir.
4) Kernel (initrd) : Initial RAM Disk adında bir imajdır. Çekirdek ve gerçek dosya sistemi yüklenmesi
sırasında yardımcı olan, geçici bir dosyadır. Tüm dizinler, işletim sistemine
burada bağlanır. İşletim sistemi başarılı şekilde yüklendiğinde işi biter.
5) init : Çekirdek, sağlıklı yüklendikten sonra, kendisinin başlangıç
işlemi olan ‘init’ işlemini başlatır. Sistemin açıldığı çalışma
seviyesinde (runlevels’da) tanımlı olan işlemleri başlatır.
6) RunLevels : Çalışmak istenen seviyenin devreye
girmesini, yüklenmesini sağlar.

Run Level 0
HALT (Sistem çalışmaz durumdadır. ‘Kapalı’ demek değildir. Kesintiyi bekliyor.)

Run Level 1
Tek kullanıcılı konsol modu. Ağ erişimi yoktur.

Run Level 2
Çok kullanıcılı konsol (terminal) modu. Ağ erişimi yoktur.

Run Level 3
Çok kullanıcılı konsol (terminal) modu. Ağ erişimi vardır.

Run Level 4
Boştur. Kişisel olarak kurgulanabilir.

Run Level 5
Çok kullanıcılı grafik arayüz (GUI) modu. Sıklıkla buradayızdır.

Run Level 6
Yeniden başlatma seviyesi.
