# Linux | Dosya, dizin komutları

**touch <dosya adi>** : Dosya oluşturmak için kullanılır.

**cat <dosya adi>** : Dosya okumak için kullanılır. -n parametresiyle satırlar numaralı gösterilir. nl <dosyaadi> komutuyla aynı işlevdedir.
  
**echo ‘’ifade’’** :  Terminale yazı yazdırmak için kullanılır. Dosyaya yazmak için ‘>’ operatörü kullanılmalıdır.
  
**more ve less <dosya>** : Uzun olan çıktıların daha rahat (bölümlü) okunmalarını sağlarlar.

**head ve tail <dosya>** : Çıktıların ilk 10 veya son 10 satırını görüntüler. –n parametresiyle 10 değeri değiştirilebilir. 
  
**sort <dosya>** : Dosyaları alfabetik sıralamayla listeler.
  
**grep <ifade> <dosya/dizin>** : Bir ifadeyi herhangi bir dosya veya dizinde aramak için kullanılır.

>-v parametresi, verilen ifadeyi içermeyen aramalar yapar. Tersine davranır.<br>
>-i parametresi, arama sırasında küçük/büyük harf duyarlılığı gözetmez.<br>
>-r parametresi, alt dizinlerde de arama yapar.<br>
  
**find <dosya> <ifade>** : Belirli bir dosya veya dizin içinde geçen ifadeleri aramak için kullanılır.
  
**cp <kaynak> <hedef>** : Dosya kopyalama komutudur.
  >–i parametresi ile, üzerine yazma işlemlerinde onay istenir.
  >-r parametresi ile dizinler de kopyalanabilir. cp –r <kaynakdizin> <hedefdizin>
  
**mv <kaynak> <hedef>** : Dosya taşıma komutudur. cp komutundaki kullanımlar burada da geçerlidir.
  Dosya uzantılarını değiştirmek için de kullanılır. mv <dosyadı> <dosyaadı.uzantısı>

**rm <dosya/dizin>** : Dosya silme komutudur.
 > (*) kullanımı ile ilgili dizin altındaki tüm dosyalar silinebilir.<br>
 >-r parametresiyle alt dosya ve dizinler silinebilir.<br>
 >-ri parametresiyle silme onayı istenir.<br>
 >-rf parametresiyle sorgusuz silme işlemi yapılır.<br>
  
**mkdir <dizinadı>** : Dizin oluşturma komutudur. mkdir dizin1 dizin2 dizin3 ... 
  >–p parametresi, alt dizinlerle birlikte oluşturur. mkdir –p dizin/altdizin/enaltdizin
