import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'MyDrawer.dart';

//import 'MyDrawer.dart';

var listStokAdi = [
  "kalem",
  "silgi",
  "defter",
];
var liststokKodu = [1, 2, 3];
var liststokAlis = [2, 5, 7];
var liststokSatis = [3, 8, 11];

class stokEkle extends StatefulWidget {
  const stokEkle({Key? key}) : super(key: key);

  @override
  State<stokEkle> createState() => _stokEkleState();
}

class _stokEkleState extends State<stokEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stok Ekle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Stok Kodu:"),
            TextField(
              keyboardType: TextInputType.text,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onChanged: (text) {
                _stokKoduDegistir(text);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text("Stok Adı:"),
            ),
            TextField(
              onChanged: (text) {
                _stokAdiDegistir(text);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                "Alış Fiyatı:",
              ),
            ),
            TextField(
              onChanged: (text) {
                _stokAlisDegistir(text);
              },
              keyboardType: TextInputType.text,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text("Satış Fiyatı:"),
            ),
            TextField(
              onChanged: (text) {
                _stokSatisDegistir(text);
              },
              keyboardType: TextInputType.text,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                _eklendi,
                style: TextStyle(color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                  onPressed: () {
                    _stkEkle();
                  },
                  child: Text("Stok Ekle")),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  String stokAdi = "";
  int stokKodu = 0, stokAlis = 0, stokSatis = 0;
  String _eklendi = "";

  void _stokAdiDegistir(String text) {
    stokAdi = text;
  }

  void _stokKoduDegistir(String text) {
    stokKodu = int.parse(text);
  }

  void _stokAlisDegistir(String text) {
    stokAlis = int.parse(text);
  }

  void _stokSatisDegistir(String text) {
    stokSatis = int.parse(text);
  }

  void _stkEkle() {
    setState(() {
      if (stokKodu != 0 && stokSatis != 0 && stokAdi != "" && stokAlis != 0) {
        listStokAdi.add(stokAdi);
        liststokKodu.add(stokKodu);
        liststokAlis.add(stokAlis);
        liststokSatis.add(stokSatis);

        _eklendi = "Stok Eklendi!!!";
        stokAdi = "";
        stokKodu = 0;
        stokAlis = 0;
        stokSatis = 0;
      }
    });
  }
}
