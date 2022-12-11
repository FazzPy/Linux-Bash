# Linux | Disk yönetimi

- Linux’ta Journalling dosya sistemi kullanılır. Journalling, diske yazılan ve diskten okunan işlemleri
dosyalara yazar; böylelikle beklenmedik güç kesintilerinde bozulan yapı onarılabilir.
- Linux’ta diskler de, diğer donanımlar gibi dosya halinde görünürler ve /dev dizini altındadırlar.
- Linux’ta diskler mount edilerek (bağlanarak) aktifleştirilir. Mount bilgileri /etc/fstab dosyasından
okunur.
- Diskler yaygın olarak EXT3 ve EXT4 dosya sistemini kullanırlar. EXT dosya sistemi, NTFS’e göre daha
hızlı, stabil ve güvenlidir. Ayrıca daha da yenidir.
- Linux’ta RAM ve disk kullanımını organize eden tempfs ve ramfs dosya sistemi özelliği de bulunur.
Önce RAM’i disk gibi kullanırlar, RAM’dedirler; RAM’de yer kalmadığında ise diski RAM gibi
kullanırlar. Diskin RAM olarak kullanıldığı alana Swap adı verilir. (Ramfs, Swap kullanmaz, sürekli
RAM’dedir.)

| Komut      | İşlev |
| ------------- | ------------- | 
| df -h | Dosya sistemi ve mount hakkında bilgiler verir |
| lsblk –p  |  Fiziksel diskler hakkında bilgi verir. |
| parted –l | Partition’lar hakkında bilgi verir. |
| fdisk <disk> | Disk bölümleme aracıdır. -l parametresiyle bilgi verir. |
| mkfs.<dosyasistemi> <disk> | Belirtilen diski, belirtilen dosya sistemiyle formatlar. |
| mount <disk> <dizin> | Belirtilen diskin, belirtilen dizine mount edilmesini sağlar. |
| umount <disk> | Belirtilen diskin unmount edilmesini sağlar. |
| blkid | Mount edilen disklerin ID’lerini (UUID’lerini) gösterir. |
| fsck <disk> | Diskte bulunan hataları denetler. |
| du –h <dosya/dizin> | İlgili dosya veya dizinin diskte kapladığı alan görüntülenir. |
| du –sh <dosya/dizin> | İlgili dosya veya dizinin alt dizinleriyle birlikte, diskte kapladığı toplam alan görüntülenir.|