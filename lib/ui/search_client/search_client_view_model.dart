import 'package:flutter/material.dart';
import 'package:optical_app_v2/app/locator.dart';
import 'package:optical_app_v2/res/custom_styles.dart';
import 'package:optical_app_v2/services/search_client_services.dart';
import 'package:stacked/stacked.dart';

class SearchClientViewModel extends BaseViewModel {
  final _searchClientServices = locator<SearchClientServices>();

  late Stream clients;
  bool isExpanded = false;

  showClient() {
    clients = _searchClientServices.getClients();
  }

  deleteClient(String userId) {
    _searchClientServices.deleteClient(userId);
  }

  SearchClientViewModel() {
    showClient();
  }

  void isExpandedEvent(bool value) {
    isExpanded = value;
    notifyListeners();
  }

  void deleteClientDialog(BuildContext context, String? userId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // Retorna el contenido del cuadro de diálogo
        return AlertDialog(
          title: const Text('¿ Deseas borrar a este cliente ?'),
          content: const Text(
              'Al realizar esta accion el usuario sera eliminado del servidor'),
          actions: <Widget>[
            // Botones o acciones en el cuadro de diálogo
            TextButton(
              onPressed: () => deleteClient(userId!),
              child: Text(
                'Eliminar',
                style: styleRedSecondary,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Cancelar',
                style: styleGreySecondary,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_searchClientServices];

  // @override
  // List<ListenableServiceMixin> get reactiveServices => [_searchClientServices];
}
