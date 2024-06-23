class SignupResponse {
  final String userId;
  final String message;

  SignupResponse({
    required this.userId,
    required this.message,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) {
    return SignupResponse(
      userId: json['userId'] ?? '',
      message: json['message'] ?? '',
    );
  }
}
