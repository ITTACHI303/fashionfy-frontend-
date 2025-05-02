class SignUpRequest {
  String? email;
  String? phone;
  String? password;
  String? confirmPassword;

  SignUpRequest({
    this.email,
    this.phone,
    this.password,
    this.confirmPassword,
  });

  static SignUpRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    SignUpRequest SignUpRequestBean = SignUpRequest();
    SignUpRequestBean.email = map['email'];
    SignUpRequestBean.phone = map['phone'];
    SignUpRequestBean.password = map['password'];
    SignUpRequestBean.confirmPassword = map['confirmPassword'];
    return SignUpRequestBean;
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "phone": phone,
        "password": password,
        "confirmPassword": confirmPassword,
      };
}
