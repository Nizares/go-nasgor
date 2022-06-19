import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/invoice.dart';
import 'package:proyek_akhir/widgets/color.dart';

class Pembayaran extends StatelessWidget {
  const Pembayaran({Key? key}) : super(key: key);

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
          "Pembayaran",
          style: TextStyle(color: black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: white1,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lokasi"),
                Text("Jl. Wakanda No.69 RT.777, Samarinda - Kalimantan Timur")
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bayar Dengan :"),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/images/logo.png"),
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("GoPay"), Text("Rp 47.000")],
                      )
                    ],
                  ),
                )),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/images/logo.png"),
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Dana"), Text("Rp 47.000")],
                      )
                    ],
                  ),
                )),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/images/logo.png"),
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("OVO"), Text("Rp 47.000")],
                      )
                    ],
                  ),
                )),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/images/logo.png"),
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("VISA"), Text("Rp 47.000")],
                      )
                    ],
                  ),
                )),
              ],
            ),
          )
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
                Get.to(() => Invoice());
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
                          child: Icon(Icons.credit_card_rounded),
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
                          "Bayar!",
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
