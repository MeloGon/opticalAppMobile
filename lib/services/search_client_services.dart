import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SearchClientServices with ReactiveServiceMixin {
  final clients = ReactiveValue<dynamic>(null);

  Stream<dynamic> getClients() {
    clients.value =
        FirebaseFirestore.instance.collection("Clientes").snapshots();
    return clients.value;
  }

  deleteClient(String idClient, BuildContext context) async {
    try {
      FirebaseFirestore.instance.collection("Clientes").doc(idClient).delete();
      Navigator.pop(context);
      print('Cliente borrado con exito');
    } catch (e) {
      print('error $e');
    }
  }
}
