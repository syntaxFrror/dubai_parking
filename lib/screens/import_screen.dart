import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

String brojTablice;
String zona;
String brojSati;

String poruka = '$brojTablice $zona $brojSati';
String brojTelefona = '+38163315923';
var listaBrojeva = [brojTelefona];

void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}

class ImportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dubai Parking'),
        backgroundColor: Color(0xFF4f3c2e),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TRANSFER DATA TO SMS
          _sendSMS(poruka, listaBrojeva);
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.send,
          color: Colors.black,
        ),
      ),
      body: Container(
        padding:
            EdgeInsets.only(top: 50.0, bottom: 50.0, left: 25.0, right: 25.0),
        color: Color(0xFFf9daa4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(Icons.directions_car),
                  hintText: 'Enter Licence Plate Number',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  brojTablice = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(Icons.local_parking),
                  hintText: 'Enter Zone',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  zona = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(Icons.access_time),
                  hintText: 'Number Of Hours',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  brojSati = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
