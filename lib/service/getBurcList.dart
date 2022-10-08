import '../data/strings.dart';
import '../model/burc.dart';

List<Burc> veriKaynaginiHazirla() {
  List<Burc> temp = [];
  for (int i = 0; i < 12; i++) {
    var burcAdi = Strings.BURC_ADLARI[i];
    var burcOzellikleri = Strings.BURC_GENEL_OZELLIKLERI[i];
    var burcTarihi = Strings.BURC_TARIHLERI[i];
    var burcKucukResim = 'assets/images/${Strings.BURC_ADLARI[i].toLowerCase()}${i + 1}.png';
    var burcBuyukResim = 'assets/images/${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i + 1}.png';

    Burc eklenecekBurc = Burc(burcAdi, burcOzellikleri, burcTarihi, burcKucukResim, burcBuyukResim);
    temp.add(eklenecekBurc);
  }
  return temp;
}
