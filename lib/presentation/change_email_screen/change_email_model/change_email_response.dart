/// message : "Verification code sent to new email"

class ChangeEmailResponse {
  ChangeEmailResponse({
      String? message,}){
    _message = message;
}

  ChangeEmailResponse.fromJson(dynamic json) {
    _message = json['message'];
  }
  String? _message;
ChangeEmailResponse copyWith({  String? message,
}) => ChangeEmailResponse(  message: message ?? _message,
);
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }

}