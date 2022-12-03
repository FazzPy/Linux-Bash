# Linux | Paketler ve Paket Yöneticileri

- Paketler manuel ya da repository (repo) adındaki depolardan yüklenirler.<br>
- Debian’da manul paketler dpkg aracı ile; repo paketleri apt aracı ile yüklenirler.<br>
- CentOS’ta manuel paketler rpm aracı ile; repo paketleri yum aracı ile yüklenirler.<br>
- Debian’da repolar /etc/apt/sources.list dosyasında;<br>
- CentOS’ta repolar /etc/yum.repos.d dosyasındadır.<br>

<br>Paket Komutları<br>

dpkg -l Sistemdeki paketleri listeler.<br>
dpkg --get-selections Kurulu ve kaldırılmış programları listeler.<br>
dpkg -s <programadı> Kurulan program hakkında bilgi verir.<br>
dpkg -L <programadı> Kurulu programın paket içeriğini gösterir.<br>
dpkg --info <paketadı.deb> Kurulacak program hakkında bilgi verir.<br>
dpkg -c <paketadı.deb> Programın nereye kurulacağını gösterir.<br>
dpkg -i <paketadı.deb> veya *.deb Pakedi yükler. * ile çoklu yükleme yapar.<br>
dpkg -reconfigure <programadı> Kurulu programı onarır.<br>
dpkg -P <programadı> Kurulu programı kaldırır.<br>
apt-get install <programadı> Programın depodan (repodan) yükler.<br>
apt-cache show <programadı> Yüklenecek program hakkında bilgi verir.<br>
apt-get remove <programadı> Kurulu programı kaldırır.<br>
apt-get purge <programadı> Programı tüm dosyalarıyla kaldırır.<br>

<h3>Kaynak Kod Kurulum Komutları</h3>

- Programlar, paketlerle kurulabildiği gibi kaynak kodlarıyla da kurulabilirler.<br>
- Bunun yapılabilmesi için DKMS (Dynamic Kernel Module Support) framework’ü kurulu olmalıdır.<br>
- Programın kaynak kodlarını indirip dizinine girilir ve aşağıdaki komutlar kullanılır.<br>

./configure Kaynak kodu hakkında ayarlamalar içerir. Her zaman bulunmaz.<br>
make Kaynak kodun makefile dosyasını arar ve yükleme işlemi için hazırlar.<br>
make install Kaynak kodu yükler.<br>
./<dosyaadı>.sh Kaynak kodu yüklenmesini otomatikleştirir veya kurulumda opsiyonlar sunar.<br>

<h3>Sistem Güncelleme Komutları</h3>

- Güncelleme işlemi gerekliliği, sistemdeki program versiyonlarının, depolardaki versiyonlar ile karşılaştırılmasıyla belirlenir. (apt-get update)<br>

- İndirilen update dosyaları için archive (arşiv); indirilen yere de cache (önbellek) adı
verilir.<br>

<b>apt-get update</b> Mevcut programlar ile depodakiler arasında versiyonları
kıyaslar ve güncelleme için indeks yaratır.

<b>apt-get upgrade</b> Mevcut programların güncellenmesini sağlar.

<b>apt-get dist-upgrade</b> Bağımlılık problemlerini çözer ve kernel’ı günceller.

<b>apt-get autoclean</b> Cache’te olup, depoda artık bulunmayan paketleri kaldırır.

<b>apt-get autoremove</b> Kaldırılmış bir paketin bağımlılığı olarak yüklenen paketleri arar ve kaldırır.

<b>apt-get clean</b> Cache’teki tüm arşivleri kaldırır.


