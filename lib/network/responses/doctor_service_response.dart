// import 'package:oea_app/models/doctor_service_model.dart';
// import 'package:oea_app/models/health_plan_model.dart';

// class DoctorServiceResponse {
//   final List<DoctorServiceModel> services;
//   final List<HealthPlanModel> healthPlans;

//   DoctorServiceResponse({
//     required this.services,
//     required this.healthPlans,
//   });

//   factory DoctorServiceResponse.fromJson(Map<String, dynamic> json) {
//     return DoctorServiceResponse(
//       services:
//           (json['servicos'] as List<dynamic>?)?.map((e) => DoctorServiceModel.fromJson(e as Object)).toList() ?? [],
//       healthPlans: (json['planos'] as List<dynamic>?)?.map((e) => HealthPlanModel.fromJson(e as Object)).toList() ?? [],
//     );
//   }
// }
