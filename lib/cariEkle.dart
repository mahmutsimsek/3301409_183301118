import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'MyDrawer.dart';

var listCariAdi = [
  "Gençlik Kırtasiye",
  "Okyanus Kırtasiye",
  "Seçkin Kırtasiye",
];
var listCariKodu = ["A-01", "A-02", "A-03"];
var listCariYetkili = ["Ahmet Şimşek", "Mehmet Yılmaz", "Mehmet Seçkin"];
var listCariTel = ["05234428992", "05239658745", "05238745687"];

class cariEkle extends StatefulWidget {
  const cariEkle({Key? key}) : super(key: key);

  @override
  State<cariEkle> createState() => _cariEkleState();
}

class _cariEkleState extends State<cariEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cari Ekle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cari Kodu:"),
            TextField(
              onChanged: (text) {
                _cariKoduDegistir(text);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text("Cari Adı:"),
            ),
            TextField(
              onChanged: (text) {
                  _cariAdiDegistir(text);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                "Cari Yetkili:",
              ),
            ),
            TextField(
              onChanged: (text) {
                 _cariYetkiliDegistir(text);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text("TelNo:"),
            ),
            TextField(
              onChanged: (text) {
                _cariTelDegistir(text);
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
                    _cariEkle();
                  },
                  child: Text("Cari Ekle")),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  String cariAdi = "", cariKodu = "", cariYetkili = "", cariTel = "";

  String _eklendi = "";

  void _cariAdiDegistir(String text) {
    cariKodu = text;
  }

  void _cariKoduDegistir(String text) {
    cariAdi = text;
  }

  void _cariYetkiliDegistir(String text) {
    cariYetkili = text;
  }

  void _cariTelDegistir(String text) {
    cariTel = text;
  }

  void _cariEkle() {
    setState(() {
      if (cariKodu != "" && cariAdi !="" && cariYetkili != "" && cariTel != "") {
        listCariAdi.add(cariAdi);
        listCariKodu.add(cariKodu);
        listCariYetkili.add(cariYetkili);
        listCariTel.add(cariTel);

        _eklendi = "Cari Eklendi!!!";
        cariAdi = "";
        cariKodu = "";
        cariYetkili = "";
        cariTel = "";
      }
    });
  }
}
