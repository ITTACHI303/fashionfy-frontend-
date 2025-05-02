/// message : "Reset token verified"
/// userId : 8

class ResetPasswordResponse {
  ResetPasswordResponse({
      String? message, 
      num? userId,}){
    _message = message;
    _userId = userId;
}

  ResetPasswordResponse.fromJson(dynamic json) {
    _message = json['message'];
    _userId = json['userId'];
  }
  String? _message;
  num? _userId;
ResetPasswordResponse copyWith({  String? message,
  num? userId,
}) => ResetPasswordResponse(  message: message ?? _message,
  userId: userId ?? _userId,
);
  String? get message => _message;
  num? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['userId'] = _userId;
    return map;
  }

}