import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MyDrawer.dart';

class iletisim extends StatefulWidget {
  const iletisim({Key? key}) : super(key: key);

  @override
  State<iletisim> createState() => _iletisimState();
}

class _iletisimState extends State<iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İletisim"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Mahmut Şimşek",style: GoogleFonts.aBeeZee(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton.icon(
                  onPressed: () {
                    _call_mail_sms("tel:05067817375");
                  },
                  label: Text("0(506)7817375"),
                  icon: Icon(Icons.phone),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton.icon(
                  onPressed: () {
                    _call_mail_sms("mailto:mahmut5206@gmail.com");
                  },
                  icon: Icon(Icons.mail),
                  label: Text("mahmut5206@gmail.com"),
                ),

              )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  _call_mail_sms(String islem) async {

    if (await canLaunch(islem)) {
      await launch(islem);
    }
  }

}
