import 'package:flutter/material.dart';
import 'package:start_page/myPage/seperate/barr_money.dart';
import 'package:start_page/myPage/seperate/tab_page.dart';
import 'package:start_page/myPage/seperate/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children:<Widget>[
            Container(
                child: UserProfile()
            ),
            Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.fromLTRB(5, 15, 5, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
                ),
              child: BarrMoney(),
            ),  //  바르머니
            Container(
              width: double.infinity,
              height: 400,
              margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: TabPage(),
            ),  //  탭페이지
          ],
      ),
    );
  }
}
