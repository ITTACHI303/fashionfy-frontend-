class LoginRequest {
  String? emailOrPhone;
  String? password;

  LoginRequest({
    this.emailOrPhone,
    this.password,
  });

  static LoginRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    LoginRequest projectListingRequest = LoginRequest();
    projectListingRequest.emailOrPhone = map['emailOrPhone'];
    projectListingRequest.password = map['password'];
    return projectListingRequest;
  }

  Map<String, dynamic> toJson() => {
        "emailOrPhone": emailOrPhone,
        "password": password,
      };
}
