/// id : 2
/// userId : 26
/// name : "My Collection"
/// updatedAt : "2025-04-29T09:47:51.841Z"
/// createdAt : "2025-04-29T09:47:51.841Z"

class CreateCollectionResponse {
  CreateCollectionResponse({
      num? id, 
      num? userId, 
      String? name, 
      String? updatedAt, 
      String? createdAt,}){
    _id = id;
    _userId = userId;
    _name = name;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
}

  CreateCollectionResponse.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _name = json['name'];
    _updatedAt = json['updatedAt'];
    _createdAt = json['createdAt'];
  }
  num? _id;
  num? _userId;
  String? _name;
  String? _updatedAt;
  String? _createdAt;
CreateCollectionResponse copyWith({  num? id,
  num? userId,
  String? name,
  String? updatedAt,
  String? createdAt,
}) => CreateCollectionResponse(  id: id ?? _id,
  userId: userId ?? _userId,
  name: name ?? _name,
  updatedAt: updatedAt ?? _updatedAt,
  createdAt: createdAt ?? _createdAt,
);
  num? get id => _id;
  num? get userId => _userId;
  String? get name => _name;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['name'] = _name;
    map['updatedAt'] = _updatedAt;
    map['createdAt'] = _createdAt;
    return map;
  }

}