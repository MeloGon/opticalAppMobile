import 'package:optical_app_v2/app/locator.dart';
import 'package:optical_app_v2/services/search_client_services.dart';
import 'package:stacked/stacked.dart';

class SearchClientViewModel extends BaseViewModel {
  final _searchClientServices = locator<SearchClientServices>();
  late Stream clients;

  showClient() {
    clients = _searchClientServices.getClients();
  }

  SearchClientViewModel() {
    showClient();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_searchClientServices];

  // @override
  // List<ListenableServiceMixin> get reactiveServices => [_searchClientServices];
}
