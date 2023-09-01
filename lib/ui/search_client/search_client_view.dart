import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:optical_app_v2/ui/search_client/search_client_view_model.dart';
import 'package:stacked/stacked.dart';

class SearchClientView extends StatelessWidget {
  const SearchClientView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SearchClientViewModel(),
        builder: (context, model, _) {
          return SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: StreamBuilder(
                //stream: model.,
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
                          return SizedBox(
                              child: Text(
                                  '${snapshot.data?.docs[index]['nombre_cli']}'));
                        });
                  }
                }),
            //child: ListView.builder(itemBuilder: itemBuilder),
          );
        });
  }
}
