import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  int ? radioValue =1;

  String deger="";




  @override
  Widget build(BuildContext context) {

    switch(radioValue)
    {
      case 1:
        deger="Galatasaray";
        break;


      case 2:
        deger="Fenerbahçe";
        break;

      case 3:
        deger="Beşiktaş";
        break;
      default:
        deger="Seçim yapılmadı.";
    };

    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(value: 1, groupValue: radioValue,
              title: Text("Galatasaray"),
              activeColor: Colors.deepPurple,
              onChanged:
            (int? data)
            {
              setState(() {
                radioValue = data;
              });
            },),

            RadioListTile(value: 2, groupValue: radioValue,
              title: Text("Fenerbahçe"),
              onChanged:
                  (int? data)
              {
                setState(() {
                  radioValue = data;
                });
              },),

            RadioListTile(value: 3, groupValue: radioValue,
              title: Text("Beşiktaş"),
              onChanged:
                  (int? data)
              {
                setState(() {
                  radioValue = data;
                });
              },),

            Text("Değer: $deger"),
          ],
        ),
      ),

    );
  }
}
