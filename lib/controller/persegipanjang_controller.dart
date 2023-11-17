import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';

import 'package:get/get_state_manager/get_state_manager.dart';

class PersegipanjangController extends GetxController {
  int P =0;
  int L =0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungpanjang(){
    int hitung = P*L;
    warna.value = Colors.green.shade200;
    hasil.value="Hasil Perhitungan luas dari $P x $L = $hitung";
  }

  void hitungLebar() {
    int hitung = P + P+L+L;
    warna.value = Colors.green.shade200;
    hasil.value = "Hasil perhitungan keliling dari $P + $P +$L + $L = $hitung ";
  }
}
