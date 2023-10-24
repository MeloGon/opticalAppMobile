import 'package:flutter/cupertino.dart';
import 'package:optical_app_v2/models/client.dart';
import 'package:optical_app_v2/res/custom_colors.dart';
import 'package:optical_app_v2/res/custom_strings.dart';
import 'package:optical_app_v2/res/custom_styles.dart';
import 'package:optical_app_v2/ui/search_client/search_client_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClientCard extends ViewModelWidget<SearchClientViewModel> {
  Client? client;
  ClientCard({super.key, this.client});

  @override
  Widget build(BuildContext context, SearchClientViewModel viewModel) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(9.0))),
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 9.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [CustomColors.blue_0359DA, CustomColors.blue_004CE6],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(9.0),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Transform.rotate(
                angle: 12,
                child: Icon(
                  CupertinoIcons.info,
                  size: 60,
                  color: Colors.white.withOpacity(.2),
                ),
              ),
            ),
            ExpansionTile(
              onExpansionChanged: viewModel.isExpandedEvent,
              backgroundColor: Colors.white,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Nombre : ",
                          style: viewModel.isExpanded
                              ? styleBold
                              : styleWhiteBold),
                      Text(client?.name ?? '',
                          style: viewModel.isExpanded
                              ? styleBold
                              : styleWhiteSecondary),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Celular : ",
                          style: viewModel.isExpanded
                              ? styleBold
                              : styleWhiteBold),
                      Text(client?.numberPhone ?? '',
                          style: viewModel.isExpanded
                              ? styleBold
                              : styleWhiteSecondary),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Edad : ",
                          style: viewModel.isExpanded
                              ? styleBold
                              : styleWhiteBold),
                      Text(client?.edad ?? '',
                          style: viewModel.isExpanded
                              ? styleBold
                              : styleWhiteSecondary),
                    ],
                  ),
                  Text(client?.dateCreated ?? '',
                      style: viewModel.isExpanded
                          ? styleBold
                          : styleWhiteSecondary),
                ],
              ),
              trailing: viewModel.isExpanded
                  ? Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: CustomColors.blue_004CE6,
                    )
                  : const SizedBox(),
              children: <Widget>[
                const Divider(),
                Text(CustomString.measureRightEyeTx, style: styleBold),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Text('Lejos Esf : ', style: styleBold),
                          Text(client?.odEsfLe ?? ' -- '),
                          const Text('   '),
                          Text("Lejos Cil : ", style: styleBold),
                          Text(client?.odCilLe ?? ' -- '),
                          const Text('   '),
                          Text("Lejos Eje : ", style: styleBold),
                          Text(client?.odEjeLe ?? ' -- '),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('Cerca Esf : ', style: styleBold),
                          Text(client?.odEsfCe ?? ' -- '),
                          const Text('   '),
                          Text("Cerca Cil : ", style: styleBold),
                          Text(client?.odCilCe ?? ' -- '),
                          const Text('   '),
                          Text("Cerca Eje : ", style: styleBold),
                          Text(client?.odEjeCe ?? ' -- '),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(CustomString.measureLeftEyeTx, style: styleBold),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Text('Lejos Esf : ', style: styleBold),
                          Text(client?.oiEsfLe ?? ' -- ', style: styleGeneral),
                          const Text('   '),
                          Text("Lejos Cil : ", style: styleBold),
                          Text(client?.oiCilLe ?? ' -- ', style: styleGeneral),
                          const Text('   '),
                          Text("Lejos Eje : ", style: styleBold),
                          Text(client?.oiEjeLe ?? ' -- ', style: styleGeneral),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('Cerca Esf : ', style: styleBold),
                          Text(client?.oiEsfCe ?? ' -- ', style: styleGeneral),
                          const Text('   '),
                          Text("Cerca Cil : ", style: styleBold),
                          Text(client?.oiCilCe ?? ' -- ', style: styleGeneral),
                          const Text('   '),
                          Text("Cerca Eje : ", style: styleBold),
                          Text(client?.oiEjeCe ?? ' -- ', style: styleGeneral),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(CustomString.measureDpEyeTx, style: styleBold),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Text('Der : ', style: styleBold),
                          Text(client?.deDp ?? ' -- ', style: styleGeneral),
                          const Text('   '),
                          Text("Izq : ", style: styleBold),
                          Text(client?.izDp ?? ' -- ', style: styleGeneral),
                          const Text('   '),
                          Text("Total : ", style: styleBold),
                          Text(client?.totalDp ?? ' -- ', style: styleGeneral),
                          // TextButton(onPressed: null, child: Text('Eliminar'))
                          const Spacer(),
                          IconButton(
                              onPressed: () => viewModel.deleteClientDialog(
                                  context, client?.userId),
                              icon: Icon(
                                Icons.delete_outline_rounded,
                                color: Colors.redAccent,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
