import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/detailmenu.dart';

class Card2 extends StatelessWidget {
  const Card2({
    Key? key,
    required this.jenis,
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.desc,
  }) : super(key: key);

  final String jenis;
  final String nama;
  final String harga;
  final String gambar;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        onTap: () {
          Get.to(() =>
              DetailMenu(nama: nama, jenis: jenis, harga: harga, desc: desc,gambar:gambar));
        },
        contentPadding: EdgeInsets.all(18),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            gambar,
            fit: BoxFit.cover,
            height: 84,
            width: 84,
          ),
        ),
        title: Text(nama),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(jenis),
            Text(harga),
          ],
        ),
      ),
    );
  }
}
