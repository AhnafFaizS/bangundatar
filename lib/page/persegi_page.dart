import 'package:bangun_datar_kelas_b_ahnap/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
   PersegiPage({super.key});
final PersegiController _persegiController=Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Persegi Page") ,),
      body: Column (
        children: [
          Image.asset("assets/persegi.jpeg",height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("persegi",style: TextStyle(color: Colors.white),
            ),
          ),
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
              _persegiController.sisi =int.parse(value);
            },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
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
                  _persegiController.hitungLuas();
                }, child: Text("Hitung Luas",style: TextStyle(color: Colors.green.shade300),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  _persegiController.hitungKeliling();
                }, child: Text("Hitung Keliling",style: TextStyle(color:  Colors.blue.shade300),)),
              ),
              Obx(() => Text(_persegiController.hasil.value, style: TextStyle(color: _persegiController.warna.value),))
            ],
          )
        ],
      ),
    );
  }
}
