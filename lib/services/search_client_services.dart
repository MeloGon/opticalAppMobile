import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class SearchClientServices with ReactiveServiceMixin {
  final clients = ReactiveValue<dynamic>(null);

  Stream<dynamic> getClients() {
    clients.value =
        FirebaseFirestore.instance.collection("Clientes").snapshots();
    return clients.value;
  }
}
