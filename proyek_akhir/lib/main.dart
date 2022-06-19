import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyek_akhir/pages/detailmenu.dart';
import 'package:proyek_akhir/pages/home.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/keranjang.dart';
import 'package:proyek_akhir/pages/landing.dart';
import 'package:proyek_akhir/pages/menu.dart';
import 'package:proyek_akhir/pages/signin.dart';
import 'package:proyek_akhir/pages/verify.dart';
import 'package:proyek_akhir/widgets/bottomnav.dart';
import 'package:proyek_akhir/widgets/color.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Poppins',
      ),
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
