import 'package:flutter/material.dart';
import 'package:optical_app_v2/res/custom_colors.dart';
import 'package:optical_app_v2/res/custom_strings.dart';
import 'package:optical_app_v2/ui/add_client/add_client_view.dart';
import 'package:optical_app_v2/ui/search_client/search_client_view.dart';
import 'package:optical_app_v2/widgets/item_text_field.dart';

class GeneralView extends StatefulWidget {
  const GeneralView({super.key});

  @override
  State<GeneralView> createState() => _GeneralViewState();
}

class _GeneralViewState extends State<GeneralView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const AddClientView(),
    const SearchClientView(),
    Container(
      width: 200,
      height: 100,
      color: Colors.green,
      // child: PicashTextField(
      //   label: 'Ad',
      //   controller: TextEditingController(),
      // ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_outlined),
            label: CustomString.addClientTx,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: CustomString.searchClientTx,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: CustomString.settingsTx,
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
