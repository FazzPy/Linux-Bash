# Linux | Lokal Kullanıcı Yönetimi

- Sistemdeki en yetkili kullanıcı root’tur.<br>
- Kullanıcı bilgileri /etc/passwd<br>
- Kullanıcı şifreleri /etc/shadow dosyasında yer alır. Okumak, root yetkileri gerektirir.<br>
- Şifresinin bilinmesi halinde, shell’de root yetkileri geçici olarak devralınabilir.<br>
- root yetkilerine sahip sudo grubunun üyesi olunabilir. Yetki yükseltme gerektiğinde
sudo komutu kullanılabilir.<br>
- Linux: ‘’Sudo is enough.’’<br>

<br>Lokal Kullanıcı Yönetimi Komutları<br>

Komut                                       İşlev<br>
chage -l <kullanıcıadı>                     Kullanıcının bilgilerini görüntüler.<br>
chfn <kullanıcıadı>                         Kullanıcı bilgilerinin değiştirilmesini sağlar.<br>
passwd <kullanıcıadı>                       Kullanıcının şifresini değiştirir.<br>
adduser <kullanıcıadı>
useradd –m <kullanıcıadı>                   Kullanıcı oluşturma komutlarıdır. –m parametresi, home dizini de yaratılmasını sağlar.<br>
deluser --remove-all-files <kullanıcıadı>
userdel –remove-all-files <kullanıcıadı>    Kullanıcı silme komutlarıdır. –remove-all-files parametresi kullanılmazsa, home dizini silinmez.<br>
su - <kullanıcıadı>                         Diğer kullanıcının yetkilerini ve shell’ini devralır.<br>
usermod –a –G sudo <kullanıcıadı>
sudo <komut>                                Kullanıcıyı, root yetkilerine sahip sudo grubunun üyesi eder. Komutu, sudo grubu aracılığıyla, root kullanıcısının yetkileri ile çalıştırır. <br>

