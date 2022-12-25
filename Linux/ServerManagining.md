# Linux | Sunucu Yönetimi

<h3>DHCP Sunucusu kurulumu</h3>

> sudo apt install isc-dhcp-server -y <br>
> sudo mv /etc/dhcp/dhcpd.conf /etc/dhcp/dhcp.conf.bck <br>
> sudo nano /etc/dhcp/dhcpd.conf

**Config dosyasının içine yazılacak komutlar**

```
# ISC DHCP GENERAL SETTINGS

authoritative;
log-facility local7;
default-lease-time 600;
max-lease-time 7200;

# DEPLOY SETTINGS FOR THE NETWORK

subnet 172.16.0.0 netmask 255.255.0.0 {
    range 172.16.2.100 172.16.2.120;
    option routers 172.16.2.1;
    option domain-name-server 1.1.1.1, 8.8.8.8;
    option domain-name "abc.local";
    option broadcast-address 172.16.2.255;
}

# STATIC IP REZERVATIONS

host PC-ID {
    hardware ethernet ;
    fixed-address 172.16.2.220;
}

```

> sudo systemctl restart isc-dhcp-server <br>
> sudo cat /var/lib/dhcp/dhcpd.leases

*Not : DHCP Sunucusun tavsiye etmiyorum, neden? Güvenlik zafiyetleri bulundurur, Yönetim de zorluk ve performansta kayıp yaşatır.*

**Eğer ki bir şirkete network hizmeti veriyorsanız şunları yapabilirsiniz : 172.16.2.100-120 finans departmanına verilir, 172.16.120-130 muhasebeye verilir, 172.16.130-140 ika'ya verilmiştir vs. vs. ayrımlar ile yapın. Çok daha profesyonel olur.**

**DHCP Sunucusunu misafirler veya kısa süreli 1-2 saat için gelenler ile kullanabilirsiniz.**

**Not : sistemi restartlamadan önce (sudo tail -n 30 /var/log/syslog) komutu ile logları kontrol edin hata vs. var ise bir sorun çıkmasını önlersiniz.**

<h3>DNS Server kurulumu</h3>

**Eğer ki bir LAN'da DNS Sunucusu olmazsa DNS Sorguları router, modem veya hattı kullanarak DNS sorguları yapar ve buda fazla yüklenmeye sebep olacağı için yavaşlama olur.**

**DNS Sunucularının artıları nedir? Sorgulara daha kısa sürede cevap verir ve iletişim performansını arttırır, önbellekleme yaparak sorguların daha seyrek aralıklarla yapılmasını sağlar. Yapılan DNS sorgularının kaydedilmesini sağlayarak takibi kolaylaştırır. Erişim yapılması istenmeyen hedeflere erişim engellenebilir.**

- Çözümleme işlemleri için IP ve isim (hostname) bilgileri içeren kayıtlara Resource Records (RR) adı verilir.
- RR’lar zone dosyaları içinde bulunurlar.
- İsimden IP çözümlemesi (Hostname >>> IP) yapılmasını sağlayan zone, Forward Lookup Zone (FLP)’dur.
- IP’den isim çözümlemesi (IP >>> Hostname) yapılmasını sağlayan zone ise, Reverse Lookup Zone (RLP)’dur.
- Linux’ta Primary olan öncü sunucu için ’Master’; Secondary olan ikincil sunucu için ’Slave’ ifadeleri yaygındır.

DNS Kavramları : https://github.com/FazzPy/Regedit-CMD/blob/main/belgeler/DNS.md

**Bind9 Kurulum komutu : sudo apt install bind9 bind9utils bind9-doc -y**

**Config dosyası ayarları**

*sudo cp /etc/bind/named.conf /etc/bind/named.conf.bck*

*sudo cp /etc/bind/named.conf.options /etc/bind/named.conf.options.bck*

*sudo nano /etc/bind/named.conf.options*

**named.conf.options içine yazılacak komutlar**

```
acl trusted {
    localhost;
    localnets;
    // IP Adresi ile localnets aynı sonucu verir, ip adresi ile aralık vs. verebilirsiniz.
    172.16.0.0/16;
};

options {
    directory "/var/cache/bind";
    
    allow-query { trusted; };
    recursion yes;
    # recursion komutu önbellekleme özelliğini açar

    // forward only komutunu yazarsak sadece yönlendirme yapar önbellekleme yapmaz

    forwarders {
        1.1.1.1;
        8.8.8.8;
    };



    dnssec-validation yes;
    dnssec-enable yes;

    auth-nxdomain no;
    listen-on-v6 { any; };

}

```

**Bu dosya bu kadar, şimdi bu komutları çalıştıralım.**

**sudo apt install dnsutils** 
**sudo dig google.com**

**Son olarak bind'i versiyon 4 ile çalıştıralım**

**sudo nano /etc/default/bind9**

*içine olması gereken komutlar ;*

```
RESOLVCONF=no

OPTIONS="-u bind -4"

```

**Ve kaydedin, sudo named-checkconf komutu ile hata yaptıysak bize söyler.**

Debian restart komutu : **sudo systemctl restart bind9**

CentOs restart komutu : **sudo systemctl restart named**

**DNS Sunucumuz başarıyla kuruldu ve artık sorgularımız çok hızlı bir şekil de çalışıyor.**

**Not : Linux notlarım da bu bölümün devamı vardır.**

**Fazz başarılar diler...**
