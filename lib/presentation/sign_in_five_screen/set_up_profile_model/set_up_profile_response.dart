/// id : 1
/// userId : 11
/// name : "Raj Patel"
/// height : "170 cm"
/// gender : "Male"
/// weight : "50 kg"
/// bodyType : "Athletic"
/// age : "25"
/// updatedAt : "2025-03-12T09:50:32.908Z"
/// createdAt : "2025-03-12T09:50:32.908Z"
/// profilePicture : null

class SetUpProfileResponse {
  SetUpProfileResponse({
      num? id, 
      num? userId, 
      String? name, 
      String? height, 
      String? gender, 
      String? weight, 
      String? bodyType, 
      String? age, 
      String? updatedAt, 
      String? createdAt, 
      dynamic profilePicture,}){
    _id = id;
    _userId = userId;
    _name = name;
    _height = height;
    _gender = gender;
    _weight = weight;
    _bodyType = bodyType;
    _age = age;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _profilePicture = profilePicture;
}

  SetUpProfileResponse.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _name = json['name'];
    _height = json['height'];
    _gender = json['gender'];
    _weight = json['weight'];
    _bodyType = json['bodyType'];
    _age = json['age'];
    _updatedAt = json['updatedAt'];
    _createdAt = json['createdAt'];
    _profilePicture = json['profilePicture'];
  }
  num? _id;
  num? _userId;
  String? _name;
  String? _height;
  String? _gender;
  String? _weight;
  String? _bodyType;
  String? _age;
  String? _updatedAt;
  String? _createdAt;
  dynamic _profilePicture;
SetUpProfileResponse copyWith({  num? id,
  num? userId,
  String? name,
  String? height,
  String? gender,
  String? weight,
  String? bodyType,
  String? age,
  String? updatedAt,
  String? createdAt,
  dynamic profilePicture,
}) => SetUpProfileResponse(  id: id ?? _id,
  userId: userId ?? _userId,
  name: name ?? _name,
  height: height ?? _height,
  gender: gender ?? _gender,
  weight: weight ?? _weight,
  bodyType: bodyType ?? _bodyType,
  age: age ?? _age,
  updatedAt: updatedAt ?? _updatedAt,
  createdAt: createdAt ?? _createdAt,
  profilePicture: profilePicture ?? _profilePicture,
);
  num? get id => _id;
  num? get userId => _userId;
  String? get name => _name;
  String? get height => _height;
  String? get gender => _gender;
  String? get weight => _weight;
  String? get bodyType => _bodyType;
  String? get age => _age;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  dynamic get profilePicture => _profilePicture;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['name'] = _name;
    map['height'] = _height;
    map['gender'] = _gender;
    map['weight'] = _weight;
    map['bodyType'] = _bodyType;
    map['age'] = _age;
    map['updatedAt'] = _updatedAt;
    map['createdAt'] = _createdAt;
    map['profilePicture'] = _profilePicture;
    return map;
  }

}