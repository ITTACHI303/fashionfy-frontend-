/// id : 17
/// userId : "26"
/// name : "John"
/// height : "165"
/// gender : "Male"
/// weight : "45"
/// bodyType : "Athletic"
/// age : "25"
/// profilePicture : "File: '/data/user/0/com.aimeasurement.app/cache/7b13291c-361d-487c-a886-47ad80ebabbb/1000142383.jpg'"
/// createdAt : "2025-04-18T09:56:50.998Z"
/// updatedAt : "2025-04-18T10:14:11.939Z"

class EditProfileResponse {
  EditProfileResponse({
      num? id, 
      String? userId, 
      String? name, 
      String? height, 
      String? gender, 
      String? weight, 
      String? bodyType, 
      String? age, 
      String? profilePicture, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _name = name;
    _height = height;
    _gender = gender;
    _weight = weight;
    _bodyType = bodyType;
    _age = age;
    _profilePicture = profilePicture;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  EditProfileResponse.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _name = json['name'];
    _height = json['height'];
    _gender = json['gender'];
    _weight = json['weight'];
    _bodyType = json['bodyType'];
    _age = json['age'];
    _profilePicture = json['profilePicture'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _userId;
  String? _name;
  String? _height;
  String? _gender;
  String? _weight;
  String? _bodyType;
  String? _age;
  String? _profilePicture;
  String? _createdAt;
  String? _updatedAt;
EditProfileResponse copyWith({  num? id,
  String? userId,
  String? name,
  String? height,
  String? gender,
  String? weight,
  String? bodyType,
  String? age,
  String? profilePicture,
  String? createdAt,
  String? updatedAt,
}) => EditProfileResponse(  id: id ?? _id,
  userId: userId ?? _userId,
  name: name ?? _name,
  height: height ?? _height,
  gender: gender ?? _gender,
  weight: weight ?? _weight,
  bodyType: bodyType ?? _bodyType,
  age: age ?? _age,
  profilePicture: profilePicture ?? _profilePicture,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get userId => _userId;
  String? get name => _name;
  String? get height => _height;
  String? get gender => _gender;
  String? get weight => _weight;
  String? get bodyType => _bodyType;
  String? get age => _age;
  String? get profilePicture => _profilePicture;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

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
    map['profilePicture'] = _profilePicture;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}