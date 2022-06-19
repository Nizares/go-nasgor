import 'package:flutter/material.dart';
import 'package:proyek_akhir/widgets/counter.dart';

class CardCart extends StatelessWidget {
  const CardCart({
    Key? key,
    required this.jenis,
    required this.nama,
    required this.harga,
    // required this.page,
  }) : super(key: key);

  final String jenis;
  final String nama;
  final String harga;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage("assets/images/logo.png"),
                  height: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jenis,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                    Text(nama,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text(harga,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
            ObjCount()
          ],
        ),
      ),
    );
  }
}
