# Linux | Süreç Yönetimi

<b>ps aux</b> : Sistemdeki tüm süreçleri gösterir.

<b>ps -e</b>  : Sadece sistem süreçlerini gösterir.

<b>ps –u <user></b> : Kullanıcıya ait süreçleri gösterir.

<b>ps aux | grep <süreçadı></b> : İsmi belirtilen işleme ait süreçleri gösterir.

<b>top</b> : Süreçleri 3 saniyede bir listeler.

<b>top -d <numara></b> : Süreçleri belirtilen numara kadar saniyede bir listeler.

<b>pstree –p</b> : Süreçleri, bağımlılıkları ve PID (Process ID)’leri ile gösterir

<b>pstree <user></b> : Kullanıcıya ait süreçleri bağımlılıklarıyla listeler.

<b>pgrep <süreçadı></b> : Belirtilen sürece ait PID’leri görüntüler.

<b>pgrep –lu <user></b> : Belirtilen kullanıcıya ait süreçleri en özet şekilde listeler.

<b>kill <PID></b> : Belirtilen PID’ye ait sürecin sonlandırılmasını sağlar.

<b>kill -9 <PID></b> : Belirtilen PID’ye ait sürecin sonlandırılmasını zorlar.

<b>killall <süreçadı></b> : Belirtilen sürece bağlı tüm süreçlerin sonlandırılmasını sağlar.

<b>killall -9 <süreçadı></b> : Belirtilen sürece bağlı tüm süreçlerin sonlandırılmasını zorlar.

<b>xkill</b> : GUI’si yanıt vermeyen uygulamayı sonlandırmaya zorlar.

