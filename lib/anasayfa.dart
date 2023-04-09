import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe/stokEkle.dart';

import 'cariEkle.dart';
import 'myDrawer.dart';


class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
   final List<String> AnaKategori = <String>["Stok", "Cari", "Fatura"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Son Yapılan Satışlar:",
                    style: GoogleFonts.mcLaren(fontSize: 25),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Son Eklenen Stoklar:",
                      style: GoogleFonts.mcLaren(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Table(
                      border: TableBorder.all(width: 2,style: BorderStyle.solid),
                      children: [
                        TableRow(children: [
                          Container(
                              child: Text("Stok Kodu",style: TextStyle(fontSize: 20),)),
                          Container(
                              child: Text("Stok Adı",style: TextStyle(fontSize: 20),)),
                          Container(
                              child: Text("Stok Alış Fiyatı",style: TextStyle(fontSize: 20),)),
                          Container(
                              child: Text("Stok Satış Fiyatı",style: TextStyle(fontSize: 20),))
                        ]),
                        TableRow(children: [
                          Container(
                              child: Text(liststokKodu[liststokKodu.length - 1]
                                  .toString())),
                          Container(
                              child: Text(listStokAdi[listStokAdi.length - 1]
                                  .toString())),
                          Container(
                              child: Text(liststokAlis[liststokAlis.length - 1]
                                  .toString())),
                          Container(
                              child: Text(
                                  liststokSatis[liststokSatis.length - 1]
                                      .toString()))
                        ]),
                        TableRow(children: [
                          Container(
                              child: Text(liststokKodu[liststokKodu.length - 2]
                                  .toString())),
                          Container(
                              child: Text(listStokAdi[listStokAdi.length - 2]
                                  .toString())),
                          Container(
                              child: Text(liststokAlis[liststokAlis.length - 2]
                                  .toString())),
                          Container(
                              child: Text(
                                  liststokSatis[liststokSatis.length - 2]
                                      .toString()))
                        ]),
                        TableRow(children: [
                          Container(
                              child: Text(liststokKodu[liststokKodu.length - 3]
                                  .toString())),
                          Container(
                              child: Text(listStokAdi[listStokAdi.length - 3]
                                  .toString())),
                          Container(
                              child: Text(liststokAlis[liststokAlis.length - 3]
                                  .toString())),
                          Container(
                              child: Text(
                                  liststokSatis[liststokSatis.length - 3]
                                      .toString()))
                        ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Son Eklenen Cariler:",
                      style: GoogleFonts.mcLaren(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Table(
                      border: TableBorder.all(width: 2,style: BorderStyle.solid),
                      children: [
                        TableRow(children: [
                          Container(
                              child: Text("Cari Kodu",style: TextStyle(fontSize: 20),)),
                          Container(
                              child: Text("Cari Adı",style: TextStyle(fontSize: 20),)),
                          Container(
                              child: Text("Cari Yetkili",style: TextStyle(fontSize: 20),)),
                          Container(
                              child: Text("Cari Tel No:",style: TextStyle(fontSize: 20),))
                        ]),
                        TableRow(children: [
                          Container(
                              child: Text(listCariKodu[listCariKodu.length - 1]
                                  .toString())),
                          Container(
                              child: Text(listCariAdi[listCariAdi.length - 1]
                                  .toString())),
                          Container(
                              child: Text(listCariYetkili[listCariYetkili.length - 1]
                                  .toString())),
                          Container(
                              child: Text(
                                  listCariTel[listCariTel.length - 1]
                                      .toString()))
                        ]),
                        TableRow(children: [
                          Container(
                              child: Text(listCariKodu[listCariKodu.length - 2]
                                  .toString())),
                          Container(
                              child: Text(listCariAdi[listCariAdi.length - 2]
                                  .toString())),
                          Container(
                              child: Text(listCariYetkili[listCariYetkili.length - 2]
                                  .toString())),
                          Container(
                              child: Text(
                                  listCariTel[listCariTel.length - 2]
                                      .toString()))
                        ]),
                        TableRow(children: [
                          Container(
                              child: Text(listCariKodu[listCariKodu.length - 3]
                                  .toString())),
                          Container(
                              child: Text(listCariAdi[listCariAdi.length - 3]
                                  .toString())),
                          Container(
                              child: Text(listCariYetkili[listCariYetkili.length - 3]
                                  .toString())),
                          Container(
                              child: Text(
                                  listCariTel[listCariTel.length - 3]
                                      .toString()))
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}