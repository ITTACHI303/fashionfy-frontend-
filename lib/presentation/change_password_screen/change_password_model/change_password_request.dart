class ChangePasswordRequest {
  num? userId;
  String? currentPassword;
  String? newPassword;
  String? confirmPassword;

  ChangePasswordRequest({
    this.userId,
    this.currentPassword,
    this.newPassword,
    this.confirmPassword,
  });

  static ChangePasswordRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    ChangePasswordRequest changePasswordRequest = ChangePasswordRequest();
    changePasswordRequest.userId = map['userId'];
    changePasswordRequest.currentPassword = map['currentPassword'];
    changePasswordRequest.newPassword = map['newPassword'];
    changePasswordRequest.confirmPassword = map['confirmPassword'];
    return changePasswordRequest;
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "currentPassword": currentPassword,
        "newPassword": newPassword,
        "confirmPassword": confirmPassword,
      };
}
