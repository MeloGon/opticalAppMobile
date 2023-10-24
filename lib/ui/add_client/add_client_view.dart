import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:optical_app_v2/res/custom_colors.dart';
import 'package:optical_app_v2/res/custom_strings.dart';
import 'package:optical_app_v2/res/custom_styles.dart';
import 'package:optical_app_v2/ui/add_client/add_client_view_model.dart';
import 'package:optical_app_v2/utils/space.dart';
import 'package:optical_app_v2/widgets/header_widget.dart';
import 'package:optical_app_v2/widgets/item_text_field.dart';
import 'package:stacked/stacked.dart';

class AddClientView extends StatelessWidget {
  const AddClientView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AddClientViewModel(),
        builder: (context, model, _) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      HeaderWidget(
                          width: size.width,
                          height: 45,
                          title: CustomString.detailsRegistertx,
                          icon: const Icon(Icons.date_range_rounded)),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Chip(
                            backgroundColor: Colors.transparent,
                            avatar: const Icon(CupertinoIcons.calendar_today),
                            label: Text(
                              DateFormat('yyyy-MM-dd')
                                  .format(model.selectedDate),
                              style: styleGeneral,
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColors.blue_004CE6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              onPressed: () {
                                model.selectDate(context);
                              },
                              child: const Row(
                                children: [
                                  Icon(CupertinoIcons.calendar_badge_plus),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Cambiar Fecha',
                                    style: TextStyle(fontFamily: 'SemiBold'),
                                  )
                                ],
                              ))
                        ],
                      ),
                      HeaderWidget(
                          width: size.width,
                          height: 45,
                          title: CustomString.dataClienttx,
                          icon: const Icon(
                              CupertinoIcons.folder_fill_badge_person_crop)),
                      space(height: 10),
                      ItemTextField(
                        width: size.width,
                        controller: model.nombreCli,
                        label: 'Nombre y Apellido',
                        prefixIcon: const Icon(Icons.person_rounded),
                      ),
                      space(height: 15),
                      ItemTextField(
                        width: size.width,
                        controller: model.celCli,
                        label: 'Número telefónico del cliente',
                        prefixIcon: const Icon(Icons.phone_android),
                        inputType: TextInputType.phone,
                      ),
                      space(height: 15),
                      ItemTextField(
                        width: size.width,
                        controller: model.vendeCli,
                        label: 'Vendedor',
                        prefixIcon: const Icon(Icons.person_4_rounded),
                      ),
                      space(height: 10),
                      ItemTextField(
                        width: size.width,
                        controller: model.edadCli,
                        label: 'Edad',
                        prefixIcon: const Icon(Icons.medical_information),
                        inputType: TextInputType.phone,
                      ),
                      space(height: 15),
                      HeaderWidget(
                          width: size.width,
                          height: 40,
                          title: CustomString.rightEyeMeasureTx,
                          icon: const Icon(Icons.remove_red_eye)),
                      Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(''),
                              Text('ESF', style: styleGeneral),
                              Text('CIL', style: styleGeneral),
                              Text('EJE', style: styleGeneral),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lejos ',
                                style: styleSecondary,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.odEsfLe,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.odCilLe,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.odEjeLe,
                                inputType: TextInputType.phone,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Cerca',
                                style: styleGeneral,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.odEsfCe,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.odCilCe,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.odEjeCe,
                                inputType: TextInputType.phone,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ADD',
                                style: styleGeneral,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.odAdd,
                                inputType: TextInputType.phone,
                              ),
                            ],
                          ),
                        ],
                      ),
                      HeaderWidget(
                          width: size.width,
                          height: 40,
                          title: CustomString.leftEyeMeasureTx,
                          icon: const Icon(Icons.remove_red_eye)),
                      Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(''),
                              Text('ESF', style: styleGeneral),
                              Text('CIL', style: styleGeneral),
                              Text('EJE', style: styleGeneral),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Lejos ', style: styleGeneral),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.oiEsfLe,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.oiCilLe,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.oiEjeLe,
                                inputType: TextInputType.phone,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Cerca', style: styleGeneral),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.oiEsfCe,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.oiCilCe,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.oiEjeCe,
                                inputType: TextInputType.phone,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('ADD', style: styleGeneral),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.oiAdd,
                                inputType: TextInputType.phone,
                              ),
                            ],
                          ),
                        ],
                      ),
                      HeaderWidget(
                          width: size.width,
                          height: 40,
                          title: 'DP Ajustes',
                          icon: const Icon(CupertinoIcons.gear_alt_fill)),
                      Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(''),
                              Text('DER', style: styleGeneral),
                              Text('IZQ', style: styleGeneral),
                              Text('TOTAL', style: styleGeneral),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('DP', style: styleGeneral),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.odDp,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.oiDp,
                                inputType: TextInputType.phone,
                              ),
                              ItemTextField(
                                padding: 2,
                                width: size.width * .2,
                                height: 30.0,
                                controller: model.dpTotal,
                                inputType: TextInputType.phone,
                              ),
                            ],
                          ),
                        ],
                      ),
                      HeaderWidget(
                          width: size.width,
                          height: 40,
                          title: CustomString.obsTx,
                          icon: const Icon(CupertinoIcons.text_bubble_fill)),
                      TextField(
                        controller: model.obsCli,
                        maxLines: 4,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: const InputDecoration(
                            labelText: CustomString.obsTx,
                            border: OutlineInputBorder()),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {
                                  model.clearSpaces();
                                },
                                child: const Text(
                                  CustomString.clearFormTx,
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                onPressed: () {
                                  model.addClient(context);
                                },
                                child: Row(
                                  children: [
                                    Icon(CupertinoIcons.check_mark),
                                    Text(
                                      CustomString.saveClientTx,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
