/// success : true
/// message : "Verification code sent via email."
/// userId : 8

class SignUpCodeSentResponse {
  SignUpCodeSentResponse({
      bool? success, 
      String? message, 
      num? userId,}){
    _success = success;
    _message = message;
    _userId = userId;
}

  SignUpCodeSentResponse.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _userId = json['userId'];
  }
  bool? _success;
  String? _message;
  num? _userId;
SignUpCodeSentResponse copyWith({  bool? success,
  String? message,
  num? userId,
}) => SignUpCodeSentResponse(  success: success ?? _success,
  message: message ?? _message,
  userId: userId ?? _userId,
);
  bool? get success => _success;
  String? get message => _message;
  num? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    map['userId'] = _userId;
    return map;
  }

}