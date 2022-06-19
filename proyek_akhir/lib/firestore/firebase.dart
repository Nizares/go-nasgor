import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreController extends GetxController {
  var menus = FirebaseFirestore.instance.collection("menu").obs;
  var users = FirebaseFirestore.instance.collection("users").obs;
}
