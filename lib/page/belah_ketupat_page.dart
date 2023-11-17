import 'package:bangun_datar_kelas_b_ahnap/controller/belah_ketupat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BelahKetupat extends StatelessWidget {
  BelahKetupat({super.key});
  final BelahketupatController _belahketupatController=Get.put(BelahketupatController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Persegipanjang Page") ,),
      body: Column (
          children: [
            Image.asset("assets/persegipanjang.jpeg",height: 100,),
            Padding(padding:
            const EdgeInsets.all(8.0),
                child: Text("PersegiPanjang",style: TextStyle(color: Colors.white),
                )),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green.shade300, borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Bangun datar persegi panjang adalah bangun datar dua dimensi yang terbentuk dari dua pasang sisi "
                      "yang sejajar dan sama panjang dengan setiap sudutnya membentuk sudut siku-siku."
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (value){
                  _belahketupatController.d1 =int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "panjang",
                    hintText: "Masukkan Panjang",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (value){
                  _belahketupatController.d2 =int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Luas",
                    hintText: "Masukkan Luas",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      _belahketupatController.hitungluas();
                    }, child: Text("Hitung Luas",style: TextStyle(color: Colors.green.shade300),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      _belahketupatController.hitungKeliling();
                    }, child: Text("Hitung Keliling",style: TextStyle(color:  Colors.blue.shade300),)),
                  ),
                  Obx(() => Text(_belahketupatController.hasil.value, style: TextStyle(color: _belahketupatController.textColor.value),))]
            ),]
      ),
    );

  }
}
