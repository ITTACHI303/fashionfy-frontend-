/// id : 11
/// userId : 26
/// name : "Raj"
/// height : "170"
/// gender : "Male"
/// weight : "45"
/// bodyType : "Athletic "
/// age : "26"
/// profilePicture : "File: '/data/user/0/com.aimeasurement.app/cache/395871f9-2815-4979-92b7-72d87d4e5f11/1000142383.jpg'"
/// createdAt : "2025-04-17T06:22:15.387Z"
/// updatedAt : "2025-04-17T06:22:15.387Z"

class GetProfilesResponse {
  GetProfilesResponse({
      num? id, 
      num? userId, 
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

  GetProfilesResponse.fromJson(dynamic json) {
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
  num? _userId;
  String? _name;
  String? _height;
  String? _gender;
  String? _weight;
  String? _bodyType;
  String? _age;
  String? _profilePicture;
  String? _createdAt;
  String? _updatedAt;
GetProfilesResponse copyWith({  num? id,
  num? userId,
  String? name,
  String? height,
  String? gender,
  String? weight,
  String? bodyType,
  String? age,
  String? profilePicture,
  String? createdAt,
  String? updatedAt,
}) => GetProfilesResponse(  id: id ?? _id,
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
  num? get userId => _userId;
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