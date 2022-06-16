// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return EventModel(
    id: json['id'] as int,
    title: json['title'] as String,
    cod: json['cod'] as String?,
    content: json['content'] as String?,
    emphasis: json['emphasis'] as String?,
    coverage: json['coverage'] as String?,
    expectedHoursToReceive: json['expected_hours_to_receive'] as int?,
    periodOf: json['period_of'] as int?,
    periodUntil: json['period_until'] as int?,
    description: json['description'] as String?,
    schedule: json['schedule'],
    daysWeek: json['days_week'],
    startDate: safeDateFromJson(json['start_date'] as String?),
    endDate: safeDateFromJson(json['end_date'] as String?),
    cancellationLimit: safeDateFromJson(json['cancellation_limit'] as String?),
    place: json['place'] as String?,
  )..image = json['image'] as String?;
}

Map<String, dynamic> _$EventModelToJson(EventModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cod', instance.cod);
  writeNotNull('image', instance.image);
  val['title'] = instance.title;
  writeNotNull('content', instance.content);
  writeNotNull('emphasis', instance.emphasis);
  writeNotNull('coverage', instance.coverage);
  writeNotNull('expected_hours_to_receive', instance.expectedHoursToReceive);
  writeNotNull('period_of', instance.periodOf);
  writeNotNull('period_until', instance.periodUntil);
  writeNotNull('description', instance.description);
  writeNotNull('place', instance.place);
  writeNotNull('schedule', instance.schedule);
  writeNotNull('days_week', instance.daysWeek);
  writeNotNull('start_date', safeDateToJson(instance.startDate));
  writeNotNull('end_date', safeDateToJson(instance.endDate));
  writeNotNull(
      'cancellation_limit', safeDateToJson(instance.cancellationLimit));
  return val;
}
