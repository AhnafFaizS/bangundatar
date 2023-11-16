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
              CustomMenu(imageAsset: "assets/segitiga.jpeg", title: "Segitiga"),
              CustomMenu(imageAsset: "assets/segitiga.jpeg", title: "Segitiga"),
              
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpeg", title: "Persegi")),
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpeg", title: "Persegi")),
            ],
          ),
          CustomMenu(imageAsset: "assets/persegipanjang.jpeg", title: "PersegiPanjang"),
          CustomMenu(imageAsset: "assets/lingkaran.jpeg", title: "Lingkaran"),
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
        padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset,height: 100,),
            Text(title,style: TextStyle(color: Colors.white)),
          ],
        ));
  }
}
