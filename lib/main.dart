import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _valBarang;
  String _valMakanan;
  List _listBarang = ["available", "empty"];
  List _makanan = [
    "Mini Pizza",
    "Hot Spicy Wings",
    "French Fries",
    "Kebab",
    "Tacoz",
    "Burger",
    "Beef burger"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("STOK MAKANAN")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DropdownButton(
              hint: Text("Pilih Makanan"),
              value: _valBarang,
              items: _makanan.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valMakanan = value;
                });
              },
            ),
            DropdownButton(
              hint: Text("Stok Data"),
              value: _valBarang,
              items: _listBarang.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valBarang = value;
                });
              },
            ),
            Text(
              "Pesanan Anda adalah $_valMakanan, Stok Barang $_valBarang",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
