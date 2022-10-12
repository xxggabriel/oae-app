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
    image: json['image'] as String?,
    content: json['content'] as String?,
    emphasis: json['emphasis'] as String?,
    coverage: json['coverage'] as String?,
    expectedHoursToReceive: json['expectedHours'] as int?,
    periodOf: json['period_of'] as int?,
    periodUntil: json['period_until'] as int?,
    description: json['description'] as String?,
    schedule: json['schedule'],
    daysWeek: json['days_week'],
    startDate: safeDateFromJson(json['startDate'] as String?),
    endDate: safeDateFromJson(json['endDate'] as String?),
    cancellationLimit: safeDateFromJson(json['cancellationLimit'] as String?),
    place: json['place'] as String?,
  );
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
  writeNotNull('expectedHours', instance.expectedHoursToReceive);
  writeNotNull('period_of', instance.periodOf);
  writeNotNull('period_until', instance.periodUntil);
  writeNotNull('description', instance.description);
  writeNotNull('place', instance.place);
  writeNotNull('schedule', instance.schedule);
  writeNotNull('days_week', instance.daysWeek);
  writeNotNull('startDate', safeDateToJson(instance.startDate));
  writeNotNull('endDate', safeDateToJson(instance.endDate));
  writeNotNull('cancellationLimit', safeDateToJson(instance.cancellationLimit));
  return val;
}
