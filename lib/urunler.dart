import 'package:flutter/material.dart';
import 'package:market_app/kategori.dart';

class Urunler extends StatefulWidget {
  Urunler({Key key}) : super(key: key);

  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          indicatorColor: Colors.red[400],
          labelColor: Colors.red[400],
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
          tabs: [
            Tab(
              child: Text("Temel Gıda"),
            ),
            Tab(
              child: Text("Şekerleme"),
            ),
            Tab(
              child: Text("İçecekler"),
            ),
            Tab(
              child: Text("Temizlik"),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Kategori(
                kategori: "Temel Gıda",
              ),
              Kategori(
                kategori: "Şekerleme",
              ),
              Kategori(
                kategori: "İçecekler",
              ),
              Kategori(
                kategori: "Temizlik",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
