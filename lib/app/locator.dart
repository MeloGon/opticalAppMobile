import 'package:get_it/get_it.dart';
import 'package:optical_app_v2/services/add_client_service.dart';
import 'package:optical_app_v2/services/search_client_services.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => SearchClientServices());
  locator.registerLazySingleton(() => AddClienteService());
  locator.registerLazySingleton(() => DialogService());
}
