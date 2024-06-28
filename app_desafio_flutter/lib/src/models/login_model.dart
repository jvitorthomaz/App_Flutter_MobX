class LoginModel {
  String authToken;
  String refreshToken;

  LoginModel({required this.authToken, required this.refreshToken});
  
  LoginModel.fromJson(Map<String, dynamic> json)
      : authToken = json['auth_token'] ?? '',
        refreshToken = json['refresh_token'] ?? '';

}
