import 'package:get_it/get_it.dart';
import 'package:optical_app_v2/services/search_client_services.dart';

final locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => SearchClientServices());
}
