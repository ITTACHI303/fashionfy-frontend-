/// message : "Email updated successfully"

class ChangeEmailOtpResponse {
  ChangeEmailOtpResponse({
      String? message,}){
    _message = message;
}

  ChangeEmailOtpResponse.fromJson(dynamic json) {
    _message = json['message'];
  }
  String? _message;
ChangeEmailOtpResponse copyWith({  String? message,
}) => ChangeEmailOtpResponse(  message: message ?? _message,
);
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }

}