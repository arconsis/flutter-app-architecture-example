import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';

part 'config.g.dart';

@freezed
class Config with _$Config {
  const factory Config({
    required String apiKey,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}
