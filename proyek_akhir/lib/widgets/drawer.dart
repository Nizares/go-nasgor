import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/landing.dart';
import 'package:proyek_akhir/pages/signin.dart';
import 'package:proyek_akhir/widgets/color.dart';

class DrawerAkun extends StatelessWidget {
  const DrawerAkun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: orange2,
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber.shade400,
                radius: 35,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ocnizar.png'),
                  radius: 32,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Tegar FItrah",
                style: TextStyle(color: white1),
              ),
              Text(
                "abangkecehh553@gmail.com",
                style: TextStyle(color: white1),
              ),
            ],
          )),
          Divider(thickness: 1,color: white2),
          ListTile(
            title: Text(
              "Akun Aing",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: white1,
              ),
            ),
            // onTap: () => Get.to(Profile()),
          ),
          Divider(thickness: 1,color: white2),
          ListTile(
            title: Text(
              "Seputar NasGOr",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: white1,
              ),
            ),
            // onTap: () => Get.to(Profile()),
          ),
          Divider(thickness: 1,color: white2),
          ListTile(
            title: Text(
              "Logout",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: white1,
              ),
            ),
            onTap: () => Get.to(SignIn()),
          ),
        ],
      ),
    );
  }
}
