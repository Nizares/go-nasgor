import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/firestore/firebase.dart';
import 'package:proyek_akhir/pages/signin.dart';
import 'package:proyek_akhir/widgets/color.dart';

import '../getx_controller/authcontroller.dart';

class DataDiri extends StatelessWidget {
  DataDiri({Key? key}) : super(key: key);
  FirestoreController fcs = Get.put(FirestoreController());
  TextController tsc = Get.put(TextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Image(
            image: AssetImage("assets/images/logo-mono.png"),
            height: 80,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Tak Kenal\nMaka Tak Sayang!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: white1),
          ),
          SizedBox(
            height: 10,
          ),
          Text("yuk isi data dirimu!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: white1)),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              TextField(
                style: TextStyle(color: white1),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: white1)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: white1)),
                    labelText: 'Nama',
                    labelStyle: TextStyle(color: white1),
                    suffixIcon: Icon(
                      Icons.person,
                      color: white1,
                    )),
                controller: tsc.namaCtrl,
              ),
              TextField(
                style: TextStyle(color: white1),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: white1)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: white1)),
                    labelText: 'Nomor Telepon',
                    labelStyle: TextStyle(color: white1),
                    suffixIcon: Icon(
                      Icons.phone_iphone,
                      color: white1,
                    )),
                controller: tsc.nohpCtrl,
              ),
              TextField(
                style: TextStyle(color: white1),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: white1)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: white1)),
                  labelText: 'Profesi',
                  labelStyle: TextStyle(color: white1),
                  suffixIcon: Icon(
                    Icons.handyman,
                    color: white1,
                  ),
                ),
                controller: tsc.profesiCtrl,
              ),
              TextField(
                style: TextStyle(color: white1),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: white1)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: white1)),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: white1),
                  suffixIcon: Icon(
                    Icons.email,
                    color: white1,
                  ),
                ),
                controller: tsc.emailCtrl,
              ),
            ]),
          )
        ],
      ),
      bottomSheet: Container(
        height: 100,
        color: red,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.125,
            child: ElevatedButton(
              onPressed: () {
                fcs.users.value.doc("+62" + tsc.nohpCtrl.value.text).set({
                  "nama": tsc.namaCtrl.value.text,
                  "email": tsc.emailCtrl.value.text,
                  "profesi": tsc.profesiCtrl.value.text,
                  "gambar": "profile.png",
                });
                FocusScope.of(context).unfocus();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Data berhasil Ditambahkan",
                    ),
                  ),
                );
                Get.to(() => SignIn());
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(white1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Icon(
                            Icons.arrow_forward,
                            color: red,
                          ),
                        ),
                      )),
                  VerticalDivider(
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                    color: red,
                  ),
                  Flexible(
                      flex: 3,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Daftar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: red,
                              fontWeight: FontWeight.w800,
                              fontSize: 18),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
