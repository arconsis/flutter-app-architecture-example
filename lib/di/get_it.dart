import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'get_it.config.dart';

final _getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencyInjection() async => _getIt.init();

T get<T extends Object>() {
  return _getIt.get<T>();
}