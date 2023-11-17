import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi*sisi;
    warna.value = Colors.green.shade200;
    hasil.value="Hasil Perhitungan luas dari $sisi x $sisi = $hitung";
  }

  void hitungKeliling() {
    int hitungK = sisi * 4;
    warna.value = Colors.blue.shade300;
    hasil.value = "Hasil perhitungan keliling dari $sisi + $sisi +$sisi + $sisi = $hitungK ";
  }
}