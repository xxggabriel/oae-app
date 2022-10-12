import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:oea_app/utils/json.dart';
import 'package:oea_app/utils/utils.dart';

part 'event_model.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
class EventModel {
  @JsonKey()
  int id;

  @JsonKey()
  String? cod;

  @JsonKey()
  String? image;

  @JsonKey()
  String title;

  @JsonKey()
  String? content;

  @JsonKey()
  String? emphasis;

  @JsonKey()
  String? coverage;

  @JsonKey(name: "expectedHours")
  int? expectedHoursToReceive;

  @JsonKey(name: "period_of")
  int? periodOf;

  @JsonKey(name: "period_until")
  int? periodUntil;

  @JsonKey()
  String? description;

  @JsonKey(name: "place")
  String? place;

  @JsonKey()
  Object? schedule;

  @JsonKey(name: "days_week")
  Object? daysWeek;

  @JsonKey(
      name: "startDate", fromJson: safeDateFromJson, toJson: safeDateToJson)
  DateTime? startDate;

  @JsonKey(name: "endDate", fromJson: safeDateFromJson, toJson: safeDateToJson)
  DateTime? endDate;

  @JsonKey(
      name: "cancellationLimit",
      fromJson: safeDateFromJson,
      toJson: safeDateToJson)
  DateTime? cancellationLimit;

  EventModel({
    required this.id,
    required this.title,
    this.cod,
    this.image,
    this.content,
    this.emphasis,
    this.coverage,
    this.expectedHoursToReceive,
    this.periodOf,
    this.periodUntil,
    this.description,
    this.schedule,
    this.daysWeek,
    this.startDate,
    this.endDate,
    this.cancellationLimit,
    this.place,
  });

  String get startDateString => DateFormat('M/d/y').format(startDate!);
  String get endDateString => endDate?.format("dd 'de' MMM, yyyy") ?? "";
  String get cancellationLimitString =>
      cancellationLimit?.format("dd 'de' MMM, yyyy") ?? "";

  factory EventModel.fromJson(Object? json) =>
      _$EventModelFromJson(json as Map<String, dynamic>);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);
}
