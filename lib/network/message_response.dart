class MessageResponse {
  final String message;

  MessageResponse({required this.message});

  factory MessageResponse.fromJson(Object? json) {
    json as Map<String, dynamic>?;
    var message = json?['msg'] ?? json?['message'] ?? "";
    return MessageResponse(
      message: message as String,
    );
  }
}
