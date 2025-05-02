/// success : true
/// message : "User created successfully. Please select verification method."
/// user : {"id":5,"email":"bhailumandaliya1180@gmail.com","phone":"1234567895"}

class SignUpResponse {
  SignUpResponse({
    bool? success,
    String? message,
    SignUp? user,
  }) {
    _success = success;
    _message = message;
    _user = user;
  }

  SignUpResponse.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _user = json['user'] != null ? SignUp.fromJson(json['user']) : null;
  }
  bool? _success;
  String? _message;
  SignUp? _user;
  SignUpResponse copyWith({
    bool? success,
    String? message,
    SignUp? user,
  }) =>
      SignUpResponse(
        success: success ?? _success,
        message: message ?? _message,
        user: user ?? _user,
      );
  bool? get success => _success;
  String? get message => _message;
  SignUp? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

/// id : 5
/// email : "bhailumandaliya1180@gmail.com"
/// phone : "1234567895"

class SignUp {
  SignUp({
    num? id,
    String? email,
    String? phone,
  }) {
    _id = id;
    _email = email;
    _phone = phone;
  }

  SignUp.fromJson(dynamic json) {
    _id = json['id'];
    _email = json['email'];
    _phone = json['phone'];
  }
  num? _id;
  String? _email;
  String? _phone;
  SignUp copyWith({
    num? id,
    String? email,
    String? phone,
  }) =>
      SignUp(
        id: id ?? _id,
        email: email ?? _email,
        phone: phone ?? _phone,
      );
  num? get id => _id;
  String? get email => _email;
  String? get phone => _phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['email'] = _email;
    map['phone'] = _phone;
    return map;
  }
}
