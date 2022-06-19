import 'package:flutter/material.dart';
import 'package:proyek_akhir/widgets/bottomnav.dart';
import 'package:proyek_akhir/widgets/color.dart';
import 'package:get/get.dart';

class Invoice extends StatelessWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange1,
      body: ListView(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.to(() => BotNav());
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: white1,
                  )),
            ],
          ),
          Padding(
              padding: EdgeInsets.all(25),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: white1),
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Terima Kasih!",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w700),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ID Pembelian"),
                              Text("GO-0020301")
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Waktu"),
                              Text("17:39 • 17 Jun 2022")
                            ],
                          )
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Nama :"),
                          Text("Tegar Fitrah Naba Atthoriq"),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Item yang Dibeli", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Harga", style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(text: "Nasi Goreng\n", style: TextStyle(color: black)),
                            TextSpan(text: "Surga Dunia\n", style: TextStyle(color: black, fontSize: 16)),
                            TextSpan(text: "x1", style: TextStyle(color: black)),
                          ])),
                          Text("Rp 22.000"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(text: "Nasi Goreng\n", style: TextStyle(color: black)),
                            TextSpan(text: "Spesial Sosis\n", style: TextStyle(color: black, fontSize: 16)),
                            TextSpan(text: "x1", style: TextStyle(color: black)),
                          ])),
                          Text("Rp 17.000"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(text: "Es\n", style: TextStyle(color: black)),
                            TextSpan(text: "Teh\n", style: TextStyle(color: black, fontSize: 16)),
                            TextSpan(text: "x2", style: TextStyle(color: black)),
                          ])),
                          Text("Rp 8.000"),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total :",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("Rp 47.000",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
