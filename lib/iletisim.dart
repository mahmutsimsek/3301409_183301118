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
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.connect_without_contact,size: 100, color: Colors.brown,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(

                      "Mahmut Şimşek",style: GoogleFonts.akayaKanadaka(fontSize: 45)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {
                        _makePhoneCall("05067817375");
                      },
                      label: Text("0(506)7817375",style: TextStyle(fontSize: 35),),
                      icon: Icon(Icons.phone,size: 35,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {
                        launchUrl(emailLaunchUri);
                        //_call_mail_smss("mailto:mahmut5206@gmail.com");
                      },
                      icon: Icon(Icons.mail,size: 35,),
                      label: Text("mahmut5206@gmail.com",style: TextStyle(fontSize: 25),),
                    ),

                  ),
                ],
              ),
              Icon(Icons.contactless_outlined,size: 100, color: Colors.brown,),
            ],
          ),
        ),
      ),
      //drawer: MyDrawer(),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }


  _call_mail_smss(String islem) async {

    if (await canLaunch(islem)) {
      await launch(islem);
    }
  }

}
String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}
final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'mahmut5206@gmail.com',
  query: encodeQueryParameters(<String, String>{
    'subject': 'Example Subject & Symbols are allowed!',
  }),
);

