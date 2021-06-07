import 'package:flutter/material.dart';
import 'package:market_app/sepet.dart';
import 'package:market_app/urunler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _icerikler;
  int _aktifIcerikNo = 0;

  @override
  void initState() {
    super.initState();
    _icerikler = [
      Urunler(),
      Sepet(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Uçarak Gelsin",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ),
      body: _icerikler[_aktifIcerikNo],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text("Ürünler"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            // ignore: deprecated_member_use
            title: Text("Sepetim"),
          ),
        ],
        onTap: (int index) {
          setState(() {
            _aktifIcerikNo = index;
          });
        },
      ),
    );
  }
}
