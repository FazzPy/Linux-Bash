# Linux | Ağ yönetimi

| Komut      | İşlev |
| ------------- | ------------- | 
| ip a |Network kartları hakkında bilgi verir. |
| ip addr del <IP> dev <interface> | Belirtilen IP’yi, belirtilen interface’ten siler. |
| ip addr add <IP> dev <interface> | Belirtilen IP’yi, belirtilen interface’e tanımlar. |
| ip route add default via <defaultgw> | Default gateway ekler. |
| nano /etc/resolv.conf | DNS sunucu bilgilerini görüntüler. |
| ip link set <interfaceadı> | down / up Belirtilen interface’in kapatılmasını/açılmasını sağlar. |
| nmcli | device status Interface’lerin bağlantı, aygıt ve tip bilgilerini verir. |
| ip r | Route tablosunu görüntüler. |
| ip route add <network> via <defaultgw> dev <interface> | Statik route ekler.*
| ip route del <network> | Statik route’u siler. *Kalıcı olması için /etc/network/interfaces dosyasına ‘’up /sbin/ip route add<network> via <defaultgw> dev <interface> ‘’ değeri eklenmelidir. |
| ip -s | link show Interface istatistiklerini görüntüler. |
| /etc/init.d/networking stop / start / restart |Interface’leri kapatır/açar/yeniden başlatır. |
| host <adres> | Belirtilen adres için IP çözümlemesi yapar. |
| telnet <IP> <port> | Belirtilen IP’de, belirtilen portun açık/kapalı durumunu kontrol eder. |
| apt-get install net-tools | ifconfig, netstat, arp, iptables gibi komutları kazandırır. |
| netstat -tunae | Sistemin bağlantı kurduğu IP ve portları görüntüler. |
| lsof –i | Bağlantı kurmuş olan programları listeler. |
| lsof –i :port | Belirtilen porta ait açık bağlantıları listeler. |