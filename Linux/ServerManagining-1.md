# Master DNS ve FLP-RLP Zone

> sudo nano /etc/bind/named.conf.local<br>
>  ile config dosyasını açıyoruz.

```
zone "abc.local" IN {
  type master;
  file "/etc/bind/zones/db.forwardzone";
};

// Not : /etc/bind altında zones klasörü oluşturmayı unutmayın.

zone "2.16.172.in-addr.arpa" {
  type master;
  file "/etc/bind/zones/db.reversezone";
};

```

<h3> Dinamik DNS </h3>

**Dinamik DNS, DHCP'den gelen bilgileri DNS'e gönderir ve dinamik bir şekil de güncellenir.**

```
Şifreleme için anahtar oluşturma komutu

sudo rndc-confgen -a -r /dev/urandom/ -u master -b 512

sudo cat /etc/bind/rndc.key

ile keyimizi görüyoruz

şimdi ekleme yapalım

sudo nano /etc/bind/named.conf.local

içindeki kodu güncelleyip alttaki kod bloğu haline getirin.

```

```

include "/etc/bind/rndc.key"

zone "abc.local" IN {
  type master;
  file "/var/lib/bind/zones/db.forwardzone";
  allow-update { key "rndc-key"; };
  also-notify { 172.16.2.10; };
};

// Not : /var/lib/bind/ altında zones klasörü oluşturmayı unutmayın.

zone "2.16.172.in-addr.arpa" {
  type master;
  file "/var/lib/bind/zones/db.reversezone";
  allow-update { key "rndc-key"; };
  also-notify { 172.16.2.10; };
};

```

**DHCP Ayarları**

*sudo nano /etc/dhcp/dhcpd.conf*

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

# DNS UPDATE SETTINGS

ddns-update-style interin;
ddns-domainname "abc.local";
ddns-rev-domainname "in-addr.arpa.";
ignore client-updates;
update-static-leases on;

key "rndc.key" {
  algorithm hmac-md5;
  secret "secret kodunuzu yapıştırın";
};

zone abc.local {
  primary 172.16.2.10;
  key "rndc.key";
  }
  
zone 2.16.172.in-addr.arpa {
  primary 172.16.2.10;
  key "rndc.key";
  }

```
