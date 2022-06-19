import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/keranjang.dart';
import 'package:proyek_akhir/widgets/card1.dart';
import 'package:proyek_akhir/widgets/color.dart';
import 'package:proyek_akhir/widgets/drawer.dart';
import 'package:proyek_akhir/widgets/homecard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      drawer: DrawerAkun(),
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
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hai, Tegar!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                HomeCard(),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rekomendasi Buat Kamu!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card1(
                    jenis: "Nasi Goreng",
                    nama: "Surga Dunia",
                    harga: "Rp 22000",
                    gambar: "assets/images/nasgor-surga-dunia.jpg"),
                Card1(
                    jenis: "Kwetiaw",
                    nama: "Kambing",
                    harga: "Rp 30000",
                    gambar: "assets/images/kwetiaw-kambing.jpg"),
                Card1(
                    jenis: "Es",
                    nama: "Teh",
                    harga: "Rp 4000",
                    gambar: "assets/images/es-teh.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 270,
            color: orange2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Image(
                            image:
                                AssetImage("assets/images/promo-profesi.png"),
                            width: 200,
                          )
                        ],
                      ),
                    ),
                    Card1(
                        jenis: "COMING SOON",
                        nama: "COMING SOON",
                        harga: "Rp #####",
                        gambar: "assets/images/logo.png"),
                    Card1(
                        jenis: "COMING SOON",
                        nama: "COMING SOON",
                        harga: "Rp #####",
                        gambar: "assets/images/logo.png"),
                    Card1(
                        jenis: "COMING SOON",
                        nama: "COMING SOON",
                        harga: "Rp #####",
                        gambar: "assets/images/logo.png"),
                    Card1(
                        jenis: "COMING SOON",
                        nama: "COMING SOON",
                        harga: "Rp #####",
                        gambar: "assets/images/logo.png"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
