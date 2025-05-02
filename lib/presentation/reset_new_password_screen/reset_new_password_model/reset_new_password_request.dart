class ResetNewPasswordRequest {
  int? userId;
  String? newPassword;
  String? confirmPassword;

  ResetNewPasswordRequest({
    this.userId,
    this.newPassword,
    this.confirmPassword,
  });

  static ResetNewPasswordRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    ResetNewPasswordRequest ResetNewPasswordRequestBean =
        ResetNewPasswordRequest();
    ResetNewPasswordRequestBean.userId = map['userId'];
    ResetNewPasswordRequestBean.newPassword = map['newPassword'];
    ResetNewPasswordRequestBean.confirmPassword = map['device_name'];
    return ResetNewPasswordRequestBean;
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "newPassword": newPassword,
        "confirmPassword": confirmPassword,
      };
}
