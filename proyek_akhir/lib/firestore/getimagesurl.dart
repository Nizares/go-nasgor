import 'package:firebase_storage/firebase_storage.dart';

Future<String> getImagesUrl(String path) async {
  FirebaseStorage storage = FirebaseStorage.instance;
  String url = await storage.ref().child(path).getDownloadURL();
  return url;
}
