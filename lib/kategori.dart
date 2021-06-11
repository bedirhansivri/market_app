import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final String kategori;
  const Kategori({Key key, this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.teal),
      ];
    }
     else if (widget.kategori == "Şekerleme") {
      gosterilecekListe = [
        Container(color: Colors.red),
        Container(color: Colors.blue),
       
      ];
    }
     else if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        Container(color: Colors.teal),
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
       
      ];
    }
    else if (widget.kategori == "Temizlik") {
      gosterilecekListe = [
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.teal),
        
       
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(10),
      childAspectRatio: 1,
      children: gosterilecekListe,
    );
  }
}
