import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/bayar.dart';
import 'package:proyek_akhir/widgets/cardkeranjang.dart';
import 'package:proyek_akhir/widgets/color.dart';
import 'package:proyek_akhir/widgets/counter.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({Key? key}) : super(key: key);

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  final Stream<QuerySnapshot> keranjang =
      FirebaseFirestore.instance.collection('Keranjang').snapshots();
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
          title: Text(
            "Keranjang",
            style: TextStyle(color: black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: white1,
          elevation: 0,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: keranjang,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something is wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            final data = snapshot.requireData;

            return ListView.builder(
              itemCount: data.size,
              itemBuilder: (context, index) {
                return CardCart(
                    jenis: data.docs[index]['jenis'],
                    nama: data.docs[index]['nama menu'],
                    harga: data.docs[index]['harga']);
              },
            );
          },
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
                          Get.to(() => Pembayaran());
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
                                      child: Icon(Icons.shopping_cart_checkout),
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
                                      "Metode Pembayaran",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ))
                            ]))))));
  }
}
