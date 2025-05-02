/// message : "Verification code sent to new phone number"

class ChangePhoneResponse {
  ChangePhoneResponse({
      String? message,}){
    _message = message;
}

  ChangePhoneResponse.fromJson(dynamic json) {
    _message = json['message'];
  }
  String? _message;
ChangePhoneResponse copyWith({  String? message,
}) => ChangePhoneResponse(  message: message ?? _message,
);
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }

}