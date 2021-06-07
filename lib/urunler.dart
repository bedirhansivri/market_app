import 'package:flutter/material.dart';

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
          tabs: [
            Tab(child: Text("Birinci Kanal")),
            Tab(child: Text("İkinci Kanal")),
            Tab(child: Text("Üçüncü Kanal")),
            Tab(child: Text("Dördüncü Kanal")),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Urunler(),
              Urunler(),
              Urunler(),
              Urunler(),
            ],
          ),
        ),
      ],
    );
  }
}
