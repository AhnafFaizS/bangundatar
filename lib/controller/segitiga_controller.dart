
import 'package:get/get.dart';

class SegitigaController extends GetxController {
  RxBool isiHitungLuas = true.obs;
  RxBool isiHitungKeliling = true.obs;
  int alas = 0;
  int tinggi =0;
  final hasil ="".obs;

  void hitungluas() {
    num hitung = 0.5 * alas * tinggi;
    hasil.value = "Hasil perhitungan dari $alas x $tinggi= $hitung";
    isiHitungLuas.value = true;
  }
  void hitungKeliling() {
    int hitung = 3 *alas ;
    hasil.value = "Hasil Perhitungan dari 3 x $alas= $hitung";
    isiHitungLuas.value = false;
  }

}
