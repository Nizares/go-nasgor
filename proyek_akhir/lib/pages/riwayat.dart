import 'package:flutter/material.dart';
import 'package:proyek_akhir/pages/keranjang.dart';
import 'package:proyek_akhir/widgets/card2.dart';
import 'package:proyek_akhir/widgets/cardriwayat.dart';
import 'package:proyek_akhir/widgets/color.dart';
import 'package:get/get.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/ocnizar.png'),
              ),
            ),
          );
        }),
        title: Center(
          child: Column(
            children: [
              Text(
                "Samarinda, Kalimantan Timur",
                style: TextStyle(
                    color: black, fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
                color: black,
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => Keranjang());
            },
            icon: Icon(
              Icons.shopping_bag_rounded,
              color: orange2,
            ),
          ),
        ],
        backgroundColor: white1,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("Riwayat", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
         CardRiwayat(),
         CardRiwayat(),
         CardRiwayat(),
         CardRiwayat(),
        ],
      ),
    );
  }
}
