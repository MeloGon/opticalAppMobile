import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:optical_app_v2/app/locator.dart';
import 'package:optical_app_v2/services/add_client_service.dart';
import 'package:random_string/random_string.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddClientViewModel extends ReactiveViewModel {
  final AddClienteService _addClienteService = locator<AddClienteService>();
  final DialogService _dialogService = locator<DialogService>();
  DateTime selectedDate = DateTime.now();

  String? userId;
  TextEditingController celCli = TextEditingController();
  TextEditingController nombreCli = TextEditingController();
  TextEditingController vendeCli = TextEditingController();
  TextEditingController edadCli = TextEditingController();
  TextEditingController generoCli = TextEditingController();
  TextEditingController odEsfLe = TextEditingController();
  TextEditingController odCilLe = TextEditingController();
  TextEditingController odEjeLe = TextEditingController();
  TextEditingController odEsfCe = TextEditingController();
  TextEditingController odCilCe = TextEditingController();
  TextEditingController odEjeCe = TextEditingController();
  TextEditingController oiEsfLe = TextEditingController();
  TextEditingController oiCilLe = TextEditingController();
  TextEditingController oiEjeLe = TextEditingController();
  TextEditingController oiEsfCe = TextEditingController();
  TextEditingController oiCilCe = TextEditingController();
  TextEditingController oiEjeCe = TextEditingController();
  TextEditingController odAdd = TextEditingController();
  TextEditingController oiAdd = TextEditingController();
  TextEditingController odDp = TextEditingController();
  TextEditingController oiDp = TextEditingController();
  TextEditingController dpTotal = TextEditingController();
  TextEditingController obsCli = TextEditingController();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      notifyListeners();
    }
  }

  addClient(BuildContext context) {
    userId = randomAlphaNumeric(16);
    try {
      Map<String, dynamic> userMap = {
        "userId": userId!,
        "fecha_cli": DateFormat('yyyy-MM-dd').format(selectedDate).toString(),
        "cel_cli": celCli.text.toString(),
        "edad_cli": edadCli.text.toString(),
        "genero_cli": generoCli.text.toString(),
        "nombre_cli": nombreCli.text.toString(),
        "vende_cli": vendeCli.text.toString(),
        "od_esf_le": odEsfLe.text.toString(),
        "od_cil_le": odCilLe.text.toString(),
        "od_eje_le": odEjeLe.text.toString(),
        "od_esf_ce": odEsfCe.text.toString(),
        "od_cil_ce": odCilCe.text.toString(),
        "od_eje_ce": odEjeCe.text.toString(),
        "oi_esf_le": oiEsfLe.text.toString(),
        "oi_cil_le": oiCilLe.text.toString(),
        "oi_eje_le": oiEjeLe.text.toString(),
        "oi_esf_ce": oiEsfCe.text.toString(),
        "oi_cil_ce": oiCilCe.text.toString(),
        "oi_eje_ce": oiEjeCe.text.toString(),
        "od_add": odAdd.text.toString(),
        "oi_add": oiAdd.text.toString(),
        "od_dp": odDp.text.toString(),
        "oi_dp": oiDp.text.toString(),
        "dp_total": dpTotal.text.toString(),
        "obs_cli": obsCli.text.toString(),
      };
      _addClienteService.createClient(userMap, userId!).then((value) async {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: const Text('Felicidades'),
              content: const Text('Tu cliente ha sido agregado con exito'),
              actions: [
                TextButton(
                  onPressed: () {
                    clearSpaces();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Aceptar'),
                ),
              ],
            );
          },
        );
      });
    } catch (e) {
      print(e.toString());
    }
  }

  clearSpaces() {
    celCli.clear();
    nombreCli.clear();
    vendeCli.clear();
    edadCli.clear();
    generoCli.clear();
    odEsfLe.clear();
    odCilLe.clear();
    odEjeLe.clear();
    odEsfCe.clear();
    odCilCe.clear();
    odEjeCe.clear();
    oiEsfLe.clear();
    oiCilLe.clear();
    oiEjeLe.clear();
    oiEsfCe.clear();
    oiCilCe.clear();
    oiEjeCe.clear();
    odAdd.clear();
    oiAdd.clear();
    odDp.clear();
    oiDp.clear();
    dpTotal.clear();
    obsCli.clear();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_addClienteService];
}
