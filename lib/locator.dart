import 'package:flutter_dependency_injection/app_info.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => AppInfo());
}
