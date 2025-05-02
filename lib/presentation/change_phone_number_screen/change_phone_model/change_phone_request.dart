class ChangePhoneRequest {
  num? userId;
  String? currentPhone;
  String? newPhone;
  String? confirmPhone;

  ChangePhoneRequest({
    this.userId,
    this.currentPhone,
    this.newPhone,
    this.confirmPhone,
  });

  static ChangePhoneRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    ChangePhoneRequest changePhoneRequest = ChangePhoneRequest();
    changePhoneRequest.userId = map['userId'];
    changePhoneRequest.currentPhone = map['currentPhone'];
    changePhoneRequest.newPhone = map['newPhone'];
    changePhoneRequest.confirmPhone = map['confirmPhone'];
    return changePhoneRequest;
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "currentPhone": currentPhone,
        "newPhone": newPhone,
        "confirmPhone": confirmPhone,
      };
}
