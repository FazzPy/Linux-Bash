# Linux CentOs | Domain Controller

- Linux’ta DC (Domain Controller) rolünü en iyi üstlenen uygulamalardan biri Samba’dır.
- Samba, Windows’lar için PDC (Primary Domain Controller) olabilir ve GC (Global Catalog) tutabilir.
- Samba, Kerberos ticket’larına cevap verebilir, domain’e join (katılım) işlemlerini yürütebilir.
- Samba, domain’e katılan (join olan) istemciler için DNS kaydı tutar ve sorgulara cevap verebilir.
- Samba, bilmediği DNS sorgularını diğer DNS sunuculara da yönlendirebilir.
- Samba, Unix ve Windows istemciler için File Server (Dosya Sunucu) rolü de üstlenebilir.

<h3>Samba Kullanıcı ve Grup Komutları</h3>

| Komut                | İşlev         |
| ---------------------|:-------------:|
| samba-tool user list | Kullanıcıları listeler. |
| samba-tool group list| Grupları listeler.      |
| samba-tool group listmembers ’’<grup_adı>’’    | Grup üyelerini listeler |
| samba-tool user create <kullanıcı_adı> | Kullanıcı oluşturur. |
| samba-tool user delete <kullanıcı_adı>| Kullanıcı siler      |
| samba-tool user setpassword <kullanıcı_adı> | Kullanıcının şifresini belirler. |
| samba-tool user setexpiry <kullanıcı_adı> --days=<sayı> | Kullanıcının şifre sona erme süresini belirler.|
| samba-tool user disable <kullanıcı_adı> | Kullanıcıyı devre dışı bırakır |
| samba-tool user enable <kullanıcı_adı>| Kulllanıcıyı etkinleştirir.      |
| samba-tool group add ’’<grup_adı>’’ | Grup oluşturur. |
| samba-tool group delete ’’<grup_adı>’’ | Grup siler.  |
| samba-tool group addmembers <grup> <kullanıcı> | Gruba kullanıcı ekler |
| samba-tool group removemembers <grup> <kullanıcı> | Gruptan kullanıcı çıkarır.      |

**Not: Bunları, RSAT ile grafik arayüzden de yapabileceğinizi unutmayın.**

<h3>CentOs SAMBA Kurulum adımları</h3>

1) Samba gibi rollerin bağımlılıklarının yüklenebilmesi için zengin içeriğe sahip EPEL adlı repoyu aktif edin ve Development Tools'u yükleyin.<br>

sudo yum install epel-release -y<br>
sudo yum groups install "Development Tools" -y<br>

2) Samba'nın bağımlılıklarını içeren paketleri yükleyin.<br>

sudo yum install krb5-devel cups-devel iniparser python-devel ibldb libtalloc libtdb libtevent gnutls-devel libacl-devel openldap-devel pam-devel readline-devel -y<br>

3) Samba'nın stabil bir peketini (4.8.3 öneririm) /opt dizinine wget ile indirin ve pakedi extract edin. Ardından extract ettiğiniz samba-4.8.3 adlı dizine girin.<br>
 
cd /opt<br>
sudo wget https://download.samba.org/pub/samba/stable/samba-4.8.3.tar.gz<br>
sudo tar -xzvf samba-4.8.3.tar.gz<br>
cd samba-4.8.3/<br>

4) Aşağıdaki adımlarla Samba'nın yüklemesine başlayın. (./configure komutundan sonra devam eden parametreler, kuruluma spesifik özellikler kazandırmak içindir.)<br>

sudo ./configure --with-configdir=/etc/samba --libdir=/usr/lib64 --prefix=/usr --localstatedir=/var --with-modulesdir=/usr/lib64/samba --with-pammodulesdir=/lib64/security --with-lockdir=/var/lib/samba --with-logfilebase=/var/log/samba --with-piddir=/run/samba --with-privatedir=/etc/samba --enable-cups --with-acl-support --with-ads --with-automount --enable-fhs --with-pam --with-quotas --with-shared-modules=idmap_rid,idmap_ad,idmap_hash,idmap_adex --with-syslog --with-utmp --with-dnsupdate<br>

sudo make<br>
sudo make install<br>

5) Samba'nın çalışabilmesi için servisini oluşturun ve ardından içeriğini aşağıdaki gibi hazırlayın.<br>

sudo nano /usr/lib/systemd/system/samba.service<br>

#İÇERİK<br>
 	
	[Unit]<br>
	Description=Samba AD Daemon<br>
	Wants=network-online.target<br>
	After=network.target network-online.target rsyslog.service<br>

	[Service]<br>
	Type=forking<br>
	PIDFile=/run/samba/samba.pid<br>
	LimitNOFILE=16384<br>
	ExecStart=/usr/sbin/samba --daemon<br>
	ExecReload=/bin/kill -HUP $MAINPID<br>

	[Install]<br>
	WantedBy=multi-user.target<br>

6) Samba servisinin açılışta çalışabilmesi için config dosyası oluşturun ve içeriğini aşağıdaki gibi hazırlayın.<br>

sudo nano /etc/tmpfiles.d/samba.conf<br>

	d /var/run/samba 0755 root root - <br>


7) Samba'nın oluşturduğu kendi config dosyasını ve Kerberos config dosyasını yedekleyin. <br>

sudo mv /etc/krb5.conf /etc/krb5.conf.bck<br>
sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.bck<br>

8) Samba'nın domain için yapılandırılmasına başlayın.<br>

sudo samba-tool domain provision --use-rfc2307 --interactive<br>

9) Yapılandırma sırasında Samba'nın, seçeneklerimize uygun olarak oluşturduğu Kerberos config dosyasını, /etc dizinine taşıyın.<br>

sudo cp /etc/samba/krb5.conf /etc/<br>

10) Samba artık DNS olarak görev alacağı için sunucu üzerindeki DNS tanımlarını interface'te ve /etc/resolv.conf'ta 127.0.0.1 olarak değiştirin.<br>

sudo nano /etc/sysconfig/network-scripts/ifcfg-ens33<br>
DNS1=127.0.0.1<br>

sudo nano /etc/resolv.conf
nameserver 127.0.0.1

11) Samba servisinin açılışta çalıştırılmasının istendiğini CentOS'a da bildirin.<br>

sudo systemctl enable samba<br>

12) CentOS'ta varsayılan olarak açık gelen firewall'unun, açılışta çalıştırılmamasını sağlayın.<br>

sudo systemctl disable firewalld<br>

13) Sunucuyu reboot ederek işlemleri kurulum ve yapılandırmayı tamamlayın.<br>

14) ABC domain'ine join olunabilmesi için gerekli RR'ların Samba DNS'te mevcut olduğunu terminalde sorgu atarak doğrulayın.<br>

host -t SRV _ldap._tcp.abc.local 127.0.0.1<br>
host -t SRV _kerberos._udp.abc.local 127.0.0.1<br>
host -t A atos.abc.local 127.0.0.1<br>

--------------------------------------