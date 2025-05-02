class ResetPasswordRequest {
  String? emailOrPhone;
  String? resetToken;

  ResetPasswordRequest({
    this.emailOrPhone,
    this.resetToken,
  });

  static ResetPasswordRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    ResetPasswordRequest ResetPasswordRequestBean = ResetPasswordRequest();
    ResetPasswordRequestBean.emailOrPhone = map['emailOrPhone'];
    ResetPasswordRequestBean.resetToken = map['resetToken'];
    return ResetPasswordRequestBean;
  }

  Map<String, dynamic> toJson() => {
        "emailOrPhone": emailOrPhone,
        "resetToken": resetToken,
      };
}
