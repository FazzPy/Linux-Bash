# Linux | History Komutu

**~/.bash_history** : Geçmişte kullanılan komutların saklandığı dosyadır.

**history** : Geçmişte kullanılan belirli sayıdaki komutu listeler.

**history <sayı>** : Geçmişte en son kullanılan komutları verilen sayı kadar listeler.

**! <numara>** : İlgili numaradaki komutun tekrar çalıştırılmasını sağlar.

**!!** : Son çalıştırılan komutun tekrar çalıştırılmasını sağlar.
  
**!<komut>:p** : İlgili komutun, daha önce kullanıldığı son haliyle tekrar çalıştırılmasını sağlar.

**$HISTSIZE** : En son girilen kaç komutun hatırlanacağını görüntüler. ~/.bashrc dosyası içinde $HISTSIZE değeri değiştirilebilir.
  
**history –d <satırnumarası>** : İlgili satırda hatırlanan komutun unutulmasını (geçmişten silinmesini) sağlar.
  
**history -c** : Geçmişin silinmesini sağlar.
