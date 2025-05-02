class EmailVerificationRequest {
  String? emailOrPhone;
  String? verificationCode;

  EmailVerificationRequest({
    this.emailOrPhone,
    this.verificationCode,
  });

  static EmailVerificationRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    EmailVerificationRequest EmailVerificationRequestBean =
        EmailVerificationRequest();
    EmailVerificationRequestBean.emailOrPhone = map['emailOrPhone'];
    EmailVerificationRequestBean.verificationCode = map['verificationCode'];
    return EmailVerificationRequestBean;
  }

  Map<String, dynamic> toJson() => {
        "emailOrPhone": emailOrPhone,
        "verificationCode": verificationCode,
      };
}
