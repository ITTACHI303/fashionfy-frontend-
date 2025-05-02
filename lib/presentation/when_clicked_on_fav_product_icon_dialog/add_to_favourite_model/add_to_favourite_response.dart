/// id : 20
/// userId : 20
/// productId : 3
/// collectionId : 1
/// updatedAt : "2025-04-29T10:18:26.749Z"
/// createdAt : "2025-04-29T10:18:26.749Z"

class AddToFavouriteResponse {
  AddToFavouriteResponse({
      num? id, 
      num? userId, 
      num? productId, 
      num? collectionId, 
      String? updatedAt, 
      String? createdAt,}){
    _id = id;
    _userId = userId;
    _productId = productId;
    _collectionId = collectionId;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
}

  AddToFavouriteResponse.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _productId = json['productId'];
    _collectionId = json['collectionId'];
    _updatedAt = json['updatedAt'];
    _createdAt = json['createdAt'];
  }
  num? _id;
  num? _userId;
  num? _productId;
  num? _collectionId;
  String? _updatedAt;
  String? _createdAt;
AddToFavouriteResponse copyWith({  num? id,
  num? userId,
  num? productId,
  num? collectionId,
  String? updatedAt,
  String? createdAt,
}) => AddToFavouriteResponse(  id: id ?? _id,
  userId: userId ?? _userId,
  productId: productId ?? _productId,
  collectionId: collectionId ?? _collectionId,
  updatedAt: updatedAt ?? _updatedAt,
  createdAt: createdAt ?? _createdAt,
);
  num? get id => _id;
  num? get userId => _userId;
  num? get productId => _productId;
  num? get collectionId => _collectionId;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['productId'] = _productId;
    map['collectionId'] = _collectionId;
    map['updatedAt'] = _updatedAt;
    map['createdAt'] = _createdAt;
    return map;
  }

}