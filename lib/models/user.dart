class User {
  final String id;
  final String userName;
  final String email;
  final String mobileNumber;
  final String password;
  final String token;
  final String? confirmPassword; // Optional field
  final dynamic otp; // Dynamic type for flexibility

  User({
    required this.id,
    required this.userName,
    required this.email,
    required this.mobileNumber,
    required this.password,
    required this.token,
    this.confirmPassword,
    this.otp,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['user'] != null ? json['user']['_id'] : '',
      email: json['user'] != null ? json['user']['email'] : '',
      userName: json['userName'] ?? '',
      //email: json['email'] ?? '',
      mobileNumber: json['mobileNumber'] ?? '',
      password: json['password'] ?? '',
      token: json['token'] ?? '',
      confirmPassword: json['confirmPassword'],
      otp: json['otp'],
    );
  }
}
