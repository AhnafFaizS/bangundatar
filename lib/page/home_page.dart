import 'package:bangun_datar_kelas_b_ahnap/page/belah_ketupat_page.dart';
import 'package:bangun_datar_kelas_b_ahnap/page/persegi_page.dart';
import 'package:bangun_datar_kelas_b_ahnap/page/persegipanjang_page.dart';
import 'package:bangun_datar_kelas_b_ahnap/page/segitiga_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF3D62DC),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: InkWell(
                onTap: (){
                  Navigator.push((context), MaterialPageRoute(builder: (context)=>SegitigaPage()));
                },
              child: CustomMenu(imageAsset: "assets/segitiga.jpeg", title: "Segitiga"))),

              Expanded(child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage()));
                },
              child: CustomMenu(imageAsset: "assets/persegi.jpeg", title: "Persegi"))),
            ],
          ),
          Expanded(child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Persegipanjang()));
            },
          child: CustomMenu(imageAsset: "assets/persegipanjang.jpeg", title: "PersegiPanjang"))),

          Expanded(child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BelahKetupat()));
              },
              child: CustomMenu(imageAsset: "assets/lingkaran.jpeg", title: "Lingkaran"))),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

final String imageAsset;
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        color: Colors.green.shade200,
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset,height: 250,),
            Text(title,style: TextStyle(color: Colors.white)),
          ],
        ));
  }
}
