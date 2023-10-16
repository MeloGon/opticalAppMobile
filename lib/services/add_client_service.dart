import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class AddClienteService with ReactiveServiceMixin {
  /* await databaseService.createClient(userMap, userId).then((value) {
      setState(() {
        _isLoading = false;
        toast('Tu cliente se ha agregado correctamente :3', Colors.grey[200],
            Colors.green, 16);
      });
    }); */
  Future<void> createClient(
      Map<String, dynamic> userData, String userId) async {
    FirebaseFirestore.instance
        .collection("Clientes")
        .doc(userId)
        .set(userData)
        .catchError((error) {
      debugPrint(error.toString());
    });
  }
}
