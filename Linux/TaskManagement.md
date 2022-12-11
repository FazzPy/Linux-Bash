# Linux | Görev Yönetimi

- Linux’ta, zamanlanmış görevleri cron adındaki servis yönetir.
Durumunu öğrenmek için service cron status komutuyla kontrol edilmelidir.<br>
- Görev /etc/crontab dosyasına eklenir. Cron servisi, her dakika burayı kontrol eder.<br>

- Zamanlanmış görevler için tanımlar 6 bölümden oluşur:
  > dk. - saat - gün - ay - hafta - günü - görev

- * ifadesi ‘her’ anlamına gelmektedir.

Değer Cinsi: Dakika Saat Gün Ay Hafta Günü Görev<br>
Değer Aralığı: 0-59 0-23 1-31 1-12 1-7     Komut

| Komut      | İşlev |
| ------------- | ------------- | 
| crontab -l | Kullanıcının zamanlanmış görevlerini listeler. |
| crontab -u <user> -l | İlgili kullanıcının zamanlanmış görevlerini listeler. |
| crontab -e | Görev zamanlamak için editör seçimi yaptırır. |
| crontab -r | Zamanlanmış görevleri siler. |