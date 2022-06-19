// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proyek_akhir/widgets/color.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/keranjang.dart';
import 'package:proyek_akhir/widgets/card1.dart';
import 'package:proyek_akhir/widgets/card2.dart';
import 'package:proyek_akhir/widgets/textfield1.dart';
import 'package:proyek_akhir/widgets/drawer.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerAkun(),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.all(8.0),
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
            // ignore: prefer_const_literals_to_create_immutables
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
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextField1(),
            Card2(
              jenis: "Nasi Goreng",
              nama: "Seafood",
              harga: "Rp 27.000",
              gambar: "assets/images/nasgor-seafood.jpg",
              desc:
                  "Nasi goreng yang berisi udang dan cumi-cumi diberi topping sunny side egg",
            ),
            Card2(
              jenis: "Nasi Goreng",
              nama: "Surga Dunia",
              harga: "Rp 22.000",
              gambar: "assets/images/nasgor-surga-dunia.jpg",
              desc:
                  "Ini adalah Nasi Goreng porsinya besar daripada nasi goreng yang lain specialnya adalah tambahan kulit goreng dan kripik belinjo",
            ),
            Card2(
              jenis: "Nasi Goreng",
              nama: "Jontor level 5",
              harga: "Rp 24.000",
              gambar: "assets/images/nasgor-jontor-5.jpg",
              desc:
                  "Nasi goreng yang terpedas di NasGOr terdiri dari cabe 7 rupa, dan menggunakan takaran sendok yaitu 10 sendok untuk level 5",
            ),
            Card2(
              jenis: "Es",
              nama: "Jeruk",
              harga: "Rp 7000",
              gambar: "assets/images/es-jeruk.jpg",
              desc:
                  "Minuman Es Jeruk yang sangat enak sayang, buah jeruknya kadang-kadang ketika tidak beruntung rasanya asem, dan ketika beruntung rasanya manis ngak ketulungan",
            ),
            Card2(
              jenis: "Kwetiaw",
              nama: "Kambing",
              harga: "Rp 30000",
              gambar: "assets/images/kwetiaw-kambing.jpg",
              desc:
                  "Kwetiaw kambing, karena kambing termasuk bahan yang lumayan mahal dan rasanya enak ketika orang itu suka, bumbunya beda daripada yang lain karena bumbu rasa daerah timur tengah",
            ),
            Card2(
              jenis: "Nasi Goreng",
              nama: "Mawut",
              harga: "Rp 20000",
              gambar: "assets/images/nasgor-maut.jpg",
              desc:
                  "Nasi Goreng mawut, yang berisi dari gabungan nasi dan sedikit mie",
            ),
            Card2(
              jenis: "Nasi Goreng",
              nama: "Ikan Asin",
              harga: "Rp 19000",
              gambar: "assets/images/nasgor-ikan-asin.jpg",
              desc:
                  "Nasi Goreng ikan asin, nasi goreng yang berisi potongan dari ikan asin",
            ),
            Card2(
              jenis: "Bihun",
              nama: "Bihun Goreng",
              harga: "Rp 16000",
              gambar: "assets/images/bihun-goreng.jpg",
              desc:
                  "bukan hanya nasi goreng dan kwetiaw disini juga ada bihun goreng",
            ),
            Card2(
              jenis: "Es",
              nama: "Teh",
              harga: "Rp 4000",
              gambar: "assets/images/es-teh.jpg",
              desc:
                  "Tidak tahu kenapa es teh disini berbeda dari yang lain silahkan coba sendiri",
            ),
            Card2(
              jenis: "Lalapan",
              nama: "Lalapan Ayam Besar + Nasi",
              harga: "Rp 23000",
              gambar: "assets/images/lalapan.jpg",
              desc:
                  "pada NasGOr tidak hanya ada nasi goreng, ada juga lalapan untuk kamu yang males makan nasi goreng, dan rasanya tidak kalah dari nasi gorengnya",
            ),
          ],
        ),
      ),
    );
  }
}
