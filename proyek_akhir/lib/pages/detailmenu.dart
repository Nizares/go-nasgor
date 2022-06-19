import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/invoice.dart';
import 'package:proyek_akhir/pages/menu.dart';
import 'package:proyek_akhir/services/keranjang_service.dart';
import 'package:proyek_akhir/widgets/bottomnav.dart';
import 'package:proyek_akhir/widgets/color.dart';

class DetailMenu extends StatelessWidget {
  const DetailMenu(
      {Key? key,
      required this.nama,
      required this.jenis,
      required this.harga,
      required this.desc,
      required this.gambar})
      : super(key: key);

  final String nama;
  final String jenis;
  final String harga;
  final String desc;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: black,
            )),
        backgroundColor: white1,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            color: orange2,
            child: Image.asset(gambar),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jenis,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  nama,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text(
                  harga,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deskripsi",
                  style: TextStyle(fontSize: 18),
                ),
                Text(desc),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 100,
        color: white1,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.125,
            child: ElevatedButton(
              onPressed: () {
                createKeranjang(
                    namamenu: nama, jenismenu: jenis, hargamenu: harga);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          "Berhasil Ditambah",
                        ),
                      ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Icon(Icons.shopping_cart),
                        ),
                      )),
                  VerticalDivider(
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                    color: white1,
                  ),
                  Flexible(
                      flex: 3,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Tambah ke Keranjang",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18),
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
