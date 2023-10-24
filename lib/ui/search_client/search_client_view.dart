import 'package:flutter/material.dart';
import 'package:optical_app_v2/models/client.dart';
import 'package:optical_app_v2/ui/search_client/local_widgets/client_card.dart';
import 'package:optical_app_v2/ui/search_client/search_client_view_model.dart';
import 'package:optical_app_v2/widgets/item_text_field.dart';
import 'package:stacked/stacked.dart';

class SearchClientView extends StatefulWidget {
  const SearchClientView({super.key});

  @override
  State<SearchClientView> createState() => _SearchClientViewState();
}

class _SearchClientViewState extends State<SearchClientView> {
  final TextEditingController _searchController = TextEditingController();
  String? searchResult = '';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SearchClientViewModel(),
        builder: (context, model, _) {
          return Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              children: [
                ItemTextField(
                  controller: _searchController,
                  width: width,
                  label: 'Buscar cliente',
                  onChangeValue: (value) {
                    setState(() {
                      searchResult = value;
                    });
                  },
                ),
                Expanded(
                  child: StreamBuilder(
                      stream: model.clients,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: CircularProgressIndicator()));
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data?.docs.length ?? 0,
                              itemBuilder: (BuildContext context, index) {
                                if (snapshot.data?.docs[index]
                                    .data()["nombre_cli"]
                                    .toLowerCase()
                                    .contains(searchResult ?? '')) {
                                  final client = Client.fromDocumentSnapshot(
                                      snapshot.data?.docs[index]);
                                  return ClientCard(
                                    client: client,
                                  );
                                } else {
                                  return const Visibility(
                                    visible: false,
                                    child: Text(
                                      'no match',
                                      style: TextStyle(fontSize: 4.0),
                                    ),
                                  );
                                }
                              });
                        }
                      }),
                ),
              ],
            ),
          );
        });
  }
}
