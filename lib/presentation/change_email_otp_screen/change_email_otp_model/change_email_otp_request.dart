class ChangeEmailOtpRequest {
  num? userId;
  String? verificationCode;
  ChangeEmailOtpRequest({
    this.userId,
    this.verificationCode,
  });

  static ChangeEmailOtpRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    ChangeEmailOtpRequest changeEmailOtpRequest = ChangeEmailOtpRequest();
    changeEmailOtpRequest.userId = map['userId'];
    changeEmailOtpRequest.verificationCode = map['verificationCode'];
    return changeEmailOtpRequest;
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "verificationCode": verificationCode,
      };
}
