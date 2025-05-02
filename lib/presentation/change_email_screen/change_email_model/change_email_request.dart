class ChangeEmailRequest {
  num? userId;
  String? currentEmail;
  String? newEmail;
  String? confirmEmail;

  ChangeEmailRequest({
    this.userId,
    this.currentEmail,
    this.newEmail,
    this.confirmEmail,
  });

  static ChangeEmailRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    ChangeEmailRequest changeEmailRequest = ChangeEmailRequest();
    changeEmailRequest.userId = map['userId'];
    changeEmailRequest.currentEmail = map['currentEmail'];
    changeEmailRequest.newEmail = map['newEmail'];
    changeEmailRequest.confirmEmail = map['confirmEmail'];
    return changeEmailRequest;
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "currentEmail": currentEmail,
        "newEmail": newEmail,
        "confirmEmail": confirmEmail,
      };
}
