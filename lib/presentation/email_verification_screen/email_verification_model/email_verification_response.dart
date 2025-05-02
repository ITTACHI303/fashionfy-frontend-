/// message : "User verified successfully"
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAsImVtYWlsIjoicmpiaGFuZGVyaTgwODBAZ21haWwuY29tIiwiaWF0IjoxNzQxNzU1ODU0LCJleHAiOjE3NDE3NTk0NTR9.a_R9rXCK36QBXb8VO1RXRFYSzQo_YprX-WrojFqXvXc"
/// user : {"id":10,"email":"rjbhanderi8080@gmail.com","phone":"1234560987","password":"$2b$10$7wgn0353YdET.v5S16Nya.GoUnPXhAmnfw0JVv0QcMMvd3O6bWd.a","googleId":null,"facebookId":null,"isVerified":true,"verificationCode":null,"resetPasswordToken":null,"resetPasswordExpires":null,"createdAt":"2025-03-12T05:02:58.163Z","updatedAt":"2025-03-12T05:04:14.570Z"}

class EmailVerificationResponse {
  EmailVerificationResponse({
    String? message,
    String? token,
    EmailVerification? user,
  }) {
    _message = message;
    _token = token;
    _user = user;
  }

  EmailVerificationResponse.fromJson(dynamic json) {
    _message = json['message'];
    _token = json['token'];
    _user =
        json['user'] != null ? EmailVerification.fromJson(json['user']) : null;
  }
  String? _message;
  String? _token;
  EmailVerification? _user;
  EmailVerificationResponse copyWith({
    String? message,
    String? token,
    EmailVerification? user,
  }) =>
      EmailVerificationResponse(
        message: message ?? _message,
        token: token ?? _token,
        user: user ?? _user,
      );
  String? get message => _message;
  String? get token => _token;
  EmailVerification? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['token'] = _token;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

/// id : 10
/// email : "rjbhanderi8080@gmail.com"
/// phone : "1234560987"
/// password : "$2b$10$7wgn0353YdET.v5S16Nya.GoUnPXhAmnfw0JVv0QcMMvd3O6bWd.a"
/// googleId : null
/// facebookId : null
/// isVerified : true
/// verificationCode : null
/// resetPasswordToken : null
/// resetPasswordExpires : null
/// createdAt : "2025-03-12T05:02:58.163Z"
/// updatedAt : "2025-03-12T05:04:14.570Z"

class EmailVerification {
  EmailVerification({
    num? id,
    String? email,
    String? phone,
    String? password,
    dynamic googleId,
    dynamic facebookId,
    bool? isVerified,
    dynamic verificationCode,
    dynamic resetPasswordToken,
    dynamic resetPasswordExpires,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _email = email;
    _phone = phone;
    _password = password;
    _googleId = googleId;
    _facebookId = facebookId;
    _isVerified = isVerified;
    _verificationCode = verificationCode;
    _resetPasswordToken = resetPasswordToken;
    _resetPasswordExpires = resetPasswordExpires;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  EmailVerification.fromJson(dynamic json) {
    _id = json['id'];
    _email = json['email'];
    _phone = json['phone'];
    _password = json['password'];
    _googleId = json['googleId'];
    _facebookId = json['facebookId'];
    _isVerified = json['isVerified'];
    _verificationCode = json['verificationCode'];
    _resetPasswordToken = json['resetPasswordToken'];
    _resetPasswordExpires = json['resetPasswordExpires'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _email;
  String? _phone;
  String? _password;
  dynamic _googleId;
  dynamic _facebookId;
  bool? _isVerified;
  dynamic _verificationCode;
  dynamic _resetPasswordToken;
  dynamic _resetPasswordExpires;
  String? _createdAt;
  String? _updatedAt;
  EmailVerification copyWith({
    num? id,
    String? email,
    String? phone,
    String? password,
    dynamic googleId,
    dynamic facebookId,
    bool? isVerified,
    dynamic verificationCode,
    dynamic resetPasswordToken,
    dynamic resetPasswordExpires,
    String? createdAt,
    String? updatedAt,
  }) =>
      EmailVerification(
        id: id ?? _id,
        email: email ?? _email,
        phone: phone ?? _phone,
        password: password ?? _password,
        googleId: googleId ?? _googleId,
        facebookId: facebookId ?? _facebookId,
        isVerified: isVerified ?? _isVerified,
        verificationCode: verificationCode ?? _verificationCode,
        resetPasswordToken: resetPasswordToken ?? _resetPasswordToken,
        resetPasswordExpires: resetPasswordExpires ?? _resetPasswordExpires,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get email => _email;
  String? get phone => _phone;
  String? get password => _password;
  dynamic get googleId => _googleId;
  dynamic get facebookId => _facebookId;
  bool? get isVerified => _isVerified;
  dynamic get verificationCode => _verificationCode;
  dynamic get resetPasswordToken => _resetPasswordToken;
  dynamic get resetPasswordExpires => _resetPasswordExpires;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['email'] = _email;
    map['phone'] = _phone;
    map['password'] = _password;
    map['googleId'] = _googleId;
    map['facebookId'] = _facebookId;
    map['isVerified'] = _isVerified;
    map['verificationCode'] = _verificationCode;
    map['resetPasswordToken'] = _resetPasswordToken;
    map['resetPasswordExpires'] = _resetPasswordExpires;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}
