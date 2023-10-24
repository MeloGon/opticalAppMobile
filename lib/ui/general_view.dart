import 'package:flutter/material.dart';
import 'package:optical_app_v2/res/custom_colors.dart';
import 'package:optical_app_v2/res/custom_strings.dart';
import 'package:optical_app_v2/res/custom_styles.dart';
import 'package:optical_app_v2/ui/add_client/add_client_view.dart';
import 'package:optical_app_v2/ui/search_client/search_client_view.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Tu Vision', style: styleTitleAppBar)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: CustomColors.blue_004CE6,
        unselectedItemColor: CustomColors.grey_E1E4E9,
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
