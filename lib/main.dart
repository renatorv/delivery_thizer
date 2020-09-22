import 'package:delivery_thizer/app/ui/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/ui/counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.cantarellTextTheme(Theme.of(context).textTheme),
      ),
      home: LoginPage(),
      routes: {
        '/counter': (_) => Counter(),
      },
    );
  }
}

//figma
//dribble
// gabul dev
//20:00
