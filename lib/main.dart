import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(new Intenciones());

class Intenciones extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntencionesState();
  }
}

class IntencionesState extends State<Intenciones> {
  File _image;
  Future getImage() async {
    try {
      var image = await ImagePicker.pickImage(source: ImageSource.camera);
      setState(() {
        _image = image;
      });
    } catch (e) {
      print("No jala la camara");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Intenciones',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: AppBar(
          title: Text('Práctica de Intenciones'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.language, color: Colors.white)),
                  title: Text(
                    "Abrir URL",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("http://itcelaya.edu.mx",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () async {
                    const url = 'https://itcelaya.edu.mx';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.phone, color: Colors.white)),
                  title: Text(
                    "Llamada Telefónica",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tel: 4610000000",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () async {
                    const url = 'tel:4615468324';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo llamar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.message, color: Colors.white)),
                  title: Text(
                    "Enviar SMS",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tel: 4610000000",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () async {
                    const url = 'sms:4615468324';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.camera, color: Colors.white)),
                  title: Text(
                    "Tomar Foto",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tomate una Selfie",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: getImage,
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.email, color: Colors.white)),
                  title: Text(
                    "Enviar Email",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text(
                        "ruben.torres@itcelaya.edu.mx",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () async {
                    const url ='mailto:ruben.torres@itcelaya.edu.mx?subject=News&body=Hello%20Newsfeed';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar correo");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.music_note, color: Colors.white)),
                  title: Text(
                    "Abrir Spotify",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text(
                        "Spotify",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () async {
                    const url =
                        'https://open.spotify.com/track/7h5ChsQo02L7ARXXzruqoC';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar correo");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.map, color: Colors.white)),
                  title: Text(
                    "Abrir maps",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text(
                        "Ubicación UTIC",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () async {
                    const url = 'https://goo.gl/maps/UTKeJdVfjVzhetQg9';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar correo");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.tag_faces, color: Colors.white)),
                  title: Text(
                    "Abrir Instagram",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text(
                        "Instagram",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () async {
                    const url = 'instagram://user?username=aldoea';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar instagram");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.mail_outline, color: Colors.white)),
                  title: Text(
                    "Enviar Whatsapp",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text(
                        "Whatsapp",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () async {
                    const url = 'whatsapp://send?text=Hello%2C%20World!';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar whatsapp");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(width: 1.0, color: Colors.white))),
                      child: Icon(Icons.calendar_today, color: Colors.white)),
                  title: Text(
                    "Abrir calendario",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text(
                        "Calendario",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () async {
                    var url = 'calshow://';
                    if (Platform.isAndroid) {
                      url = 'content://com.android.calendar/time/';
                    } else if (Platform.isIOS) {
                      url = 'calshow://';
                    }
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar whatsapp");
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
