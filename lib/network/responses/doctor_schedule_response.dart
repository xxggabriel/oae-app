import 'package:oea_app/models/doctor_schedule_model.dart';

class DoctorScheduleResponse {
  final List<DoctorScheduleModel> hours;

  DoctorScheduleResponse({
    required this.hours,
  });

  factory DoctorScheduleResponse.fromJson(Map<String, dynamic> json) {
    return DoctorScheduleResponse(
      hours: (json['horarios'] as List<dynamic>?)?.map((e) => DoctorScheduleModel.fromJson(e as Object)).toList() ?? [],
    );
  }
}
