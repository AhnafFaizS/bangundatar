
import 'package:bangun_datar_kelas_b_ahnap/controller/segitiga_controller.dart';
import 'package:bangun_datar_kelas_b_ahnap/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
   SegitigaPage({super.key});
  final SegitigaController _segitigaController=Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:const Text("Segitiga Page") ,),
    body: Column (
    children: [
      Image.asset("assets/segitiga.jpeg",height: 100,),
      Padding(padding:
      const EdgeInsets.all(8.0),
        child: Text("segitiga",style: TextStyle(color: Colors.white),
      )),
        Container(
          decoration: BoxDecoration(
              color: Colors.green.shade300, borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          padding: const EdgeInsets.all(8.0),
          child: Text(
              "Turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)."
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            onChanged: (value){
              _segitigaController.alas =int.parse(value);
              _segitigaController.tinggi= int.parse(value);
            },
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "Tinggi",
                hintText: "Masukkan Tinggi",
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
              _segitigaController.alas =int.parse(value);
              _segitigaController.tinggi= int.parse(value);
            },
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "Alas",
                hintText: "Masukkan Alas",
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
                _segitigaController.isiHitungLuas();
              }, child: Text("Hitung Luas",style: TextStyle(color: Colors.green.shade300),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                _segitigaController.isiHitungKeliling();
              }, child: Text("Hitung Keliling",style: TextStyle(color:  Colors.blue.shade300),)),
            ),
            Obx(() => Text(_segitigaController.hasil.value,))
    ],
    )
        ]
    ),
    );
  }
}
