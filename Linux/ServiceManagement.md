# Linux | Servis yönetimi

- Servisleri, çalışma seviyeleri (run levels) başlatır veya sonlandırır. Her çalışma seviyesi, hangi
servislerin başlatılması ya da sonlandırılması gerektiğini /etc dizini altındaki kendi dosyalarından
okur. (etc/rc0.d, rc1.d, rc5.d gibi
- Burada okuduğu her servis, aslında bir sembolik linktir. Servisler, etc/init.d altında bulunurlar.
- Her servis /etc/init.d dizininde bir script’e bağlıdır. Servisler, başlama veya kapanma
davranışlarını, /etc/init.d altındaki script’lere göre belirlerler.

<b>Servis Yönetim Komutları</b>

| Komut      | İşlev |
| ------------- | ------------- | 
| service --status-all | Tüm serivlerin çalışırlık durumunu görüntüler. |
| service <servisadı> status |  İlgili servisin durumunu görüntüler. |
| service <servisadı> start | İlgili servisi başlatır. |
| service <servisadı> stop | İlgili servisi durdurur. |
| service <servisadı> restart  | İlgili servisi yeniden başlatır. (Kapatıp açar.) |
| systemctl --type=service | Tüm servislerin durumu ve açıklamasını görüntüler. |
| systemctl enable <servisadı> | İlgili servisin sistem açılışında çalışmasını sağlar. |
| systemctl disable <servisadı> | İlgili servisin sistem açılışında çalışmamasını sağlar. |
