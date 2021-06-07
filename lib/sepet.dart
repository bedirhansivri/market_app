import 'package:flutter/material.dart';

class Sepet extends StatelessWidget {
  const Sepet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[400],
            ),
          ),
        ),
        ListTile(
          title: Text("Çikolatalı Gofret"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text("7 TL"),
        ),
        ListTile(
          title: Text("Meyve Suyu"),
          subtitle: Text("1 adet x 2.0 TL"),
          trailing: Text("2 TL"),
        ),
        ListTile(
          title: Text("Islak Kek"),
          subtitle: Text("2 adet x 5.50 TL"),
          trailing: Text("11 TL"),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: [
                  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                      color: Colors.red[400],
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "20 TL",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[400],
            ),
            child: Center(
              child: Text(
                "Alışverişi tamamla",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
