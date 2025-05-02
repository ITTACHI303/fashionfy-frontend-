class SignUpCodeSentRequest {
  num? userId;
  String? verificationMethod;

  SignUpCodeSentRequest({
    this.userId,
    this.verificationMethod,
  });

  static SignUpCodeSentRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    SignUpCodeSentRequest SignUpCodeSentRequestBean = SignUpCodeSentRequest();
    SignUpCodeSentRequestBean.userId = map['userId'];
    SignUpCodeSentRequestBean.verificationMethod = map['verificationMethod'];
    return SignUpCodeSentRequestBean;
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "verificationMethod": verificationMethod,
      };
}
