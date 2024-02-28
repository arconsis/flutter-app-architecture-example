import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series.freezed.dart';

part 'tv_series.g.dart';

@freezed
class TvSeries with _$TvSeries {
  const factory TvSeries({
    required String? backdropPath,
    required String? firstAirDate,
    required int id,
    required String name,
    required String? overview,
    required double? popularity,
    required String? posterPath,
    required double? voteAverage,
    required int? voteCount,
  }) = _TvSeries;

  factory TvSeries.fromJson(Map<String, dynamic> json) => _$TvSeriesFromJson(json);
}
