import 'package:flutter/material.dart';
import 'package:muhasebe/stokEkle.dart';

import 'anasayfa.dart';
import 'cariEkle.dart';
import 'iletisim.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.calculate,
                    color: Colors.white,
                    size: 100.0,
                  ),
                  Text(
                    "Muhasebe",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Anasayfa'),
            trailing: Icon(Icons.arrow_right_outlined),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => anaSayfa()));
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Stok'),
            trailing: Icon(Icons.arrow_drop_down),
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_drop_down),
                leading: Icon(Icons.add),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => stokEkle()));
                },
                title: Text("Stok Ekle"),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_drop_down),
                leading: Icon(Icons.remove),
                onTap: () {

                },
                title: Text("Stok Sil"),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_drop_down),
                leading: Icon(Icons.edit),
                onTap: () {
                },
                title: Text("Stok Düzenle"),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.person),
            title: Text('Cari'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Cari Ekle'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cariEkle()));
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Cari Düzenle'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.remove),
                title: Text('Cari Sil'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('İletişim'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => iletisim()));
            },
          ),
        ],
      ),
    );
  }
}