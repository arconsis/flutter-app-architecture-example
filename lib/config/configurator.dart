import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_architecture/config/config.dart';
import 'package:injectable/injectable.dart';

@singleton
class Configurator {

  final Config config;

  Configurator(this.config);


  @FactoryMethod(preResolve: true)
  static Future<Configurator> init() async {
    return Configurator(
      await loadJsonAsset(),
    );
  }


}

Future<Config> loadJsonAsset() async {
  final String jsonString = await rootBundle.loadString('assets/config.json');
  final data = jsonDecode(jsonString);
  return Config.fromJson(data);
}