import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp()); // run App
}

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () async {
            final f = FirebaseFirestore.instance;
            await f.collection('PROFILE').doc('abc').set({'abc??':'bcdcd'});
            print('됐냐?');
            },
            child: Container(
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration( border: Border.all(width: 2, color: Colors.green), borderRadius: BorderRadius.circular(12) ),
            child: Text('보내기', style: TextStyle(fontSize: 25),),),
        ),
      ),
    );
  }

}










