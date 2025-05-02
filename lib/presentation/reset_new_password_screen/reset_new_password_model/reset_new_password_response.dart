/// message : "Password reset successful"

class ResetNewPasswordResponse {
  ResetNewPasswordResponse({
      String? message,}){
    _message = message;
}

  ResetNewPasswordResponse.fromJson(dynamic json) {
    _message = json['message'];
  }
  String? _message;
ResetNewPasswordResponse copyWith({  String? message,
}) => ResetNewPasswordResponse(  message: message ?? _message,
);
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }

}