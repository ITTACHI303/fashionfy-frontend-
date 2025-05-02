/// message : "Password reset code sent"

class ForgotPasswordResponse {
  ForgotPasswordResponse({
      String? message,}){
    _message = message;
}

  ForgotPasswordResponse.fromJson(dynamic json) {
    _message = json['message'];
  }
  String? _message;
ForgotPasswordResponse copyWith({  String? message,
}) => ForgotPasswordResponse(  message: message ?? _message,
);
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }

}