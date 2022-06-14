
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

  @JsonKey(name: "expected_hours_to_receive")
  int? expectedHoursToReceive;
  
  @JsonKey(name: "period_of")
  int? periodOf;

  @JsonKey(name: "period_until")
  int? periodUntil;

  @JsonKey()
  String? description;
  
  @JsonKey()
  Object? schedule;

  @JsonKey(name: "days_week")
  Object? daysWeek;

  @JsonKey(name: "start_date", fromJson: safeDateFromJson, toJson: safeDateToJson)
  DateTime? startDate;
  
  @JsonKey(name: "start_end_date", fromJson: safeDateFromJson, toJson: safeDateToJson)
  DateTime? startEndDate;
  
  @JsonKey(name: "cancellation_limit", fromJson: safeDateFromJson, toJson: safeDateToJson)
  DateTime? cancellationLimit;

  EventModel({
    required this.id,
    required this.title,
    this.cod,
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
    this.startEndDate,
    this.cancellationLimit,
  });

  factory EventModel.fromJson(Object? json) => _$EventModelFromJson(json as Map<String, dynamic>);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  String get startDateString => startDate?.format("dd 'de' MMM, yyyy") ?? "";
  String get startEndDateString => startEndDate?.format("dd 'de' MMM, yyyy") ?? "";
  String get cancellationLimitString => cancellationLimit?.format("dd 'de' MMM, yyyy") ?? "";
}