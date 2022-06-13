class DoctorCalendarResponse {
  final List<int> days;

  DoctorCalendarResponse({
    required this.days,
  });

  factory DoctorCalendarResponse.fromJson(Map<String, dynamic> json) {
    return DoctorCalendarResponse(
      days: (json['dias_disponiveis'].cast<int>()) ?? [],
    );
  }
}
