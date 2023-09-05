import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:optical_app_v2/res/custom_strings.dart';
import 'package:optical_app_v2/res/custom_styles.dart';
import 'package:optical_app_v2/utils/space.dart';
import 'package:optical_app_v2/widgets/header_widget.dart';
import 'package:optical_app_v2/widgets/item_text_field.dart';

class AddClientView extends StatelessWidget {
  const AddClientView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
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
                        /* DateFormat('yyyy-MM-dd').format(selectedDate) */ '10/09/2023',
                        style: styleGeneral,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          // _selectDate(context);
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
                  controller: TextEditingController(),
                  label: 'Nombre y Apellido',
                  prefixIcon: const Icon(Icons.person_rounded),
                ),
                space(height: 15),
                ItemTextField(
                  width: size.width,
                  controller: TextEditingController(),
                  label: 'Número telefónico del cliente',
                  prefixIcon: const Icon(Icons.phone_android),
                ),
                space(height: 15),
                ItemTextField(
                  width: size.width,
                  controller: TextEditingController(),
                  label: 'Vendedor',
                  prefixIcon: const Icon(Icons.person_4_rounded),
                ),
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 10),
                //   decoration: BoxDecoration(
                //       border: Border.all(color: Colors.grey, width: 1),
                //       borderRadius: BorderRadius.circular(15)),
                //   child: DropdownButton(
                //     hint: Text('Genero del Cliente', /* style: styleGeneral */),
                //     icon: Icon(CupertinoIcons.chevron_down),
                //     iconSize: 14,
                //     isExpanded: true,
                //     underline: SizedBox(),
                //     style: TextStyle(
                //         color: Colors.black, fontSize: 13, fontFamily: 'Regular'),
                //     // value: valueChooseGenre,
                //     items: listGenre.map((valueItem) {
                //       return DropdownMenuItem(
                //         value: valueItem,
                //         child: Text(valueItem),
                //       );
                //     }).toList(),
                //     onChanged: (value) {
                //       // setState(() {
                //       //   valueChooseGenre = value;
                //       // });
                //     },
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 10),
                //   decoration: BoxDecoration(
                //       border: Border.all(color: Colors.grey, size.width: 1),
                //       borderRadius: BorderRadius.circular(15)),
                //   child: DropdownButton(
                //     hint: Text(
                //       'Rango de Edad',
                //       //style: styleGeneral,
                //     ),
                //     icon: Icon(CupertinoIcons.chevron_down),
                //     iconSize: 14,
                //     isExpanded: true,
                //     underline: SizedBox(),
                //     style: TextStyle(
                //         color: Colors.black, fontSize: 12, fontFamily: 'Regular'),
                //     // value: valueChooseOld,
                //     // items: listOld.map((valueItem) {
                //     //   return DropdownMenuItem(
                //     //     value: valueItem,
                //     //     child: Text(valueItem),
                //     //   );
                //     // }).toList(),
                //     onChanged: (value) {
                //       // setState(() {
                //       //   valueChooseOld = value;
                //       // });
                //     },
                //   ),
                // ),

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
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
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
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
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
                          controller: TextEditingController(),
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
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
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
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
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
                          controller: TextEditingController(),
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
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
                          inputType: TextInputType.phone,
                        ),
                        ItemTextField(
                          padding: 2,
                          width: size.width * .2,
                          height: 30.0,
                          controller: TextEditingController(),
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
                  ////controller: obs_cli,
                  maxLines: 10,
                  //style: styleGeneral,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
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
                            //clearSpaces();
                          },
                          child: Text(
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
                            //addClient();
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
  }
}
