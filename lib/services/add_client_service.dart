import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class AddClienteService with ListenableServiceMixin {
  createClient() async {
    FirebaseFirestore.instance.collection("Clientes");
  }
}
