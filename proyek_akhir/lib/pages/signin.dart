import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/home.dart';
import 'package:proyek_akhir/pages/signup.dart';
import 'package:proyek_akhir/widgets/bottomnav.dart';
import 'package:proyek_akhir/widgets/color.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phonenumber = TextEditingController();
    FirebaseFirestore user = FirebaseFirestore.instance;
    CollectionReference users = user.collection("users");
    List login = [];
    Future getData() async {
      await users.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          login.add(result.data());
        }
      });
      return login;
    }

    return Scaffold(
      backgroundColor: Color(0xffd93728),
      body: 
        ListView(
          children: [
            SizedBox(height: 50),
            Container(
              child: Image(
                image: AssetImage(
                  "assets/images/logo-mono.png",
                ),
              ),
              height: 80,
              width: 80,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Yuk, Masuk Lagi !!!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Form(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                        maxLength: 11,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixText: '+62     ',
                          counterText: "",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        controller: phonenumber,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Pastiin nomor yang kamu masukkan benar ya",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffefefef),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  users.doc("+62" + phonenumber.value.text).get().then((value) {
                    if (value.exists) {
                      Get.to(() => BotNav());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          "Nomor yang kamu masukkan salah",
                        ),
                      ));
                    }
                  });
                },
                child: Text(
                  "Masuk",
                  style: TextStyle(
                      color: Color(0xffefefef),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 320,
            ),
            
          ],
        ),
        bottomSheet: Container(
            height: 80,
            color: red,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Belum punya akun?",
                    style: TextStyle(color: white2, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => DataDiri());
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                          color: white2,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),)
      
    );
  }
}
