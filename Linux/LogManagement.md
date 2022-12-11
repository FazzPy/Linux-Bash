# Linux | Kayıt Yönetimi

- Log’lar, sistemde gerçekleşen tüm değişikliklerin kaydını tutan, metin tabanlı dosyalardır.<br>
- Log’lar /var/log dizini altında bulunurlar.<br>

| Dosya / Dizin      | Açıklama |
| ------------- | ------------- | 
| /var/log/auth.log |  Kullanıcı login kayıtlarıdır. |
| /var/log/lastlog | En son oturum açan kullanıcı kayıtlarıdır. |
| /var/log/user.log | Kullanıcı aktivite kayıtlarıdır. |
| /var/log/boot.log | Sistem açılışı (boot) kayıtlarıdır. |
| /var/log/kern.log | Çekirdek (kernel) kayıtlarıdır. |
| /var/log/cron.log | Zamanlanmış görevlerin kayıtlarıdır. |
| /var/log/messages | Sistem aktivite kayıtlarıdır. Sistem mesajlarıdır. |
| /var/log/syslog | Sistem mesaj servisinin kayıtlarıdır. |
| /var/log/debug | Hata ayıklama (debug) için oluştulan kayıtlardır. |
| /var/log/deamon.log | Çalışan servislerin kayıtlarıdır. |
| /var/log/proftpd | FTP servisinin kayıtlarıdır. |
| /var/log/maillog | Mail servisinin kayıtlarıdır. |
| /var/log/dpkg.log | DPKG paket yöneticisinin kayıtlarıdır. |


<h3>Kayıt Yönetimi Komutları</h3>

| Komut     | İşlev |
| ------------- | ------------- | 
| last -10 –i | Sistemde oturum açmış en son 10 kullanıcıyı, IP bilgisiyle verir. |
| lastlog | Uzaktan sisteme oturum açmış kullanıcı bilgilerini verir. |
| lastlog –u <user> | İlgili kullanıcının uzaktan en son ne zaman oturum açtığını verir. |
| dmesg | Sistem açılışı sırasındaki mesajları görüntüler. |
| cat /var/log/auth.log | Kullanıcı login kayıtlarını verir. |
| tail -f /var/log/auth.log | Kayıtları gerçek zamanlı olarak listeler. |


