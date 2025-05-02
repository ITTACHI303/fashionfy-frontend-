import 'dart:io';

class SetUpProfileRequest {
  num? userId;
  String? name;
  String? height;
  String? gender;
  String? weight;
  String? bodyType;
  String? age;
  File? profilePicture;

  SetUpProfileRequest({
    this.userId,
    this.name,
    this.height,
    this.gender,
    this.weight,
    this.bodyType,
    this.age,
    this.profilePicture,
  });

  static SetUpProfileRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    SetUpProfileRequest SetUpProfileRequestBean = SetUpProfileRequest();
    SetUpProfileRequestBean.userId = map['userId'];
    SetUpProfileRequestBean.name = map['name'];
    SetUpProfileRequestBean.height = map['height'];
    SetUpProfileRequestBean.gender = map['gender'];
    SetUpProfileRequestBean.weight = map['weight'];
    SetUpProfileRequestBean.bodyType = map['bodyType'];
    SetUpProfileRequestBean.age = map['age'];
    SetUpProfileRequestBean.profilePicture = map['profilePicture'];
    return SetUpProfileRequestBean;
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
