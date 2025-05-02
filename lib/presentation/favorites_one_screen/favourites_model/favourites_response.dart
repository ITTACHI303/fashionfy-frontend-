/// id : 3
/// userId : 26
/// productId : 1
/// createdAt : "2025-04-22T13:00:39.034Z"
/// updatedAt : "2025-04-22T13:00:39.034Z"

class FavouritesResponse {
  FavouritesResponse({
      num? id, 
      num? userId, 
      num? productId, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _productId = productId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  FavouritesResponse.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _productId = json['productId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _userId;
  num? _productId;
  String? _createdAt;
  String? _updatedAt;
FavouritesResponse copyWith({  num? id,
  num? userId,
  num? productId,
  String? createdAt,
  String? updatedAt,
}) => FavouritesResponse(  id: id ?? _id,
  userId: userId ?? _userId,
  productId: productId ?? _productId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  num? get userId => _userId;
  num? get productId => _productId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['productId'] = _productId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}