import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class keranjang {
  String idUser;
  int kuantitas;
  String idMenu;

  keranjang(
    this.idUser,
    this.idMenu,
    this.kuantitas,
  );
}

Future createKeranjang(
    {required namamenu, required jenismenu, required hargamenu}) async {
  final docUser = FirebaseFirestore.instance.collection('Keranjang');

  final json = {'nama menu': namamenu, 'jenis': jenismenu, 'harga': hargamenu};

  await docUser.add(json);
}

Future editKeranjang() async {
  FirebaseFirestore.instance
      .collection('Keranjang')
      .doc('0WSNTY3PjrNeWuSDl8Eh')
      .update({'id': 'Some new data'});
}
