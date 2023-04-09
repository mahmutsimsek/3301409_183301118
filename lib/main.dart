import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhasebe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Muhasebe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String adSoyad = '';
  String sifre = '';
  bool adsifreyanlis = false;

  void _adSoyadKaydet(String text) {
    adSoyad = text;
  }

  void _sifreKaydet(String text) {
    sifre = text;
  }

  void girisKonrolEt() {
    if (adSoyad == "a" && sifre == "1") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => anaSayfa()));
      setState(() {
        adsifreyanlis = false;
      });
    } else {
      setState(() {
        adsifreyanlis = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.person,
                size: 150,
              ),
            ),
            Text(
              'Yetkili Kullanıcı Adı:',
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                
                onChanged: (text) {
                  _adSoyadKaydet(text);
                },
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            Text(
              'Yetkili Şifre:',
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                onChanged: (text) {
                  _sifreKaydet(text);
                },
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Visibility(
              child: Text("Kullanıcı Adı Veya Şifre Yanlış!",
                  style: TextStyle(color: Colors.red)),
              visible: adsifreyanlis,
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    girisKonrolEt();
                  },
                  child: Text("Giriş Yap"),
                ))
          ],
        ),
      ),
    );
  }
}
