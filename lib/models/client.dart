import 'package:cloud_firestore/cloud_firestore.dart';

class Client {
  String? userId;
  String? dateCreated;
  String? name;
  String? numberPhone;
  String? vendeCli;
  String? odEsfLe;
  String? odCilLe;
  String? odEjeLe;
  String? odEsfCe;
  String? odCilCe;
  String? odEjeCe;
  String? odAdd;
  String? oiEsfLe;
  String? oiCilLe;
  String? oiEjeLe;
  String? oiEsfCe;
  String? oiCilCe;
  String? oiEjeCe;
  String? oiAdd;
  String? deDp;
  String? izDp;
  String? totalDp;

  Client({
    this.userId,
    this.dateCreated,
    this.name,
    this.numberPhone,
    this.vendeCli,
    this.odEsfLe,
    this.odCilLe,
    this.odEjeLe,
    this.odEsfCe,
    this.odCilCe,
    this.odEjeCe,
    this.odAdd,
    this.oiEsfLe,
    this.oiCilLe,
    this.oiEjeLe,
    this.oiEsfCe,
    this.oiCilCe,
    this.oiEjeCe,
    this.oiAdd,
    this.deDp,
    this.izDp,
    this.totalDp,
  });

  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
      userId: json['userId'],
      dateCreated: json['fecha_cli'],
      name: json['nombre_cli'],
      numberPhone: json['cel_cli'],
      vendeCli: json['vende_cli'],
      odEsfLe: json['od_esf_le'],
      odCilLe: json['od_cil_le'],
      odEjeLe: json['od_eje_le'],
      odEsfCe: json['od_esf_ce'],
      odCilCe: json['od_cil_ce'],
      odEjeCe: json['od_eje_ce'],
      odAdd: json['od_add'],
      oiEsfLe: json['oi_esf_le'],
      oiCilLe: json['oi_cil_le'],
      oiEjeLe: json['oi_eje_le'],
      oiEsfCe: json['oi_esf_ce'],
      oiCilCe: json['oi_cil_ce'],
      oiEjeCe: json['oi_eje_ce'],
      oiAdd: json['oi_add'],
      deDp: json['de_dp'],
      izDp: json['de_dp'],
      totalDp: json['dp_total'],
    );
  }

  // factory Client.fromSnapshot(DocumentSnapshot) {
  //  Client client =
  // }
}
