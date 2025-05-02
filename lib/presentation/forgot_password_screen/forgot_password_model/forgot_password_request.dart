class ForgotPasswordRequest {
  String? emailOrPhone;
  String? verificationMethod;

  ForgotPasswordRequest({
    this.emailOrPhone,
    this.verificationMethod,
  });

  static ForgotPasswordRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    ForgotPasswordRequest ForgotPasswordRequestBean = ForgotPasswordRequest();
    ForgotPasswordRequestBean.emailOrPhone = map['emailOrPhone'];
    ForgotPasswordRequestBean.verificationMethod = map['verificationMethod'];
    return ForgotPasswordRequestBean;
  }

  Map<String, dynamic> toJson() => {
        "emailOrPhone": emailOrPhone,
        "verificationMethod": verificationMethod,
      };
}
