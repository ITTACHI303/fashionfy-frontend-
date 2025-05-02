import 'dart:io';

class EditProfileRequest {
  num? userId;
  String? name;
  String? height;
  String? gender;
  String? weight;
  String? bodyType;
  String? age;
  File? profilePicture;

  EditProfileRequest({
    this.userId,
    this.name,
    this.height,
    this.gender,
    this.weight,
    this.bodyType,
    this.age,
    this.profilePicture,
  });

  static EditProfileRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    EditProfileRequest editProfileRequest = EditProfileRequest();
    editProfileRequest.userId = map['userId'];
    editProfileRequest.name = map['name'];
    editProfileRequest.height = map['height'];
    editProfileRequest.gender = map['gender'];
    editProfileRequest.weight = map['weight'];
    editProfileRequest.bodyType = map['bodyType'];
    editProfileRequest.age = map['age'];
    editProfileRequest.profilePicture = map['profilePicture'];
    return editProfileRequest;
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "height": height,
        "gender": gender,
        "weight": weight,
        "bodyType": bodyType,
        "age": age,
        "profilePicture": profilePicture,
      };
}
