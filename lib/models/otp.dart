class otpModel {

  final String otp;

  otpModel({required this. otp});

  factory otpModel.fromJson(Map<String, dynamic> json) {
    return otpModel(
      otp: json['otp'] ?? '',
    
    );
}
}