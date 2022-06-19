import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/invoice.dart';

class CardRiwayat extends StatelessWidget {
  const CardRiwayat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {Get.to(() => Invoice());},
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "GO-0020301",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text("17:39 • 17 Jun 2022"),
              SizedBox(
                height: 10,
              ),
              Text("Rp 47.000",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
