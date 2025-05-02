/// id : 2
/// name : "My Collection"
/// userId : 26
/// createdAt : "2025-04-29T09:47:51.841Z"
/// updatedAt : "2025-04-29T09:47:51.841Z"
/// Favorites : [{"id":21,"userId":26,"productId":2,"collectionId":2,"createdAt":"2025-04-29T10:25:38.634Z","updatedAt":"2025-04-29T10:25:38.634Z"},{"id":22,"userId":26,"productId":2,"collectionId":2,"createdAt":"2025-04-29T10:28:47.069Z","updatedAt":"2025-04-29T10:28:47.069Z"}]

class GetCollectionResponse {
  GetCollectionResponse({
      num? id, 
      String? name, 
      num? userId, 
      String? createdAt, 
      String? updatedAt, 
      List<Favorites>? favorites,}){
    _id = id;
    _name = name;
    _userId = userId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _favorites = favorites;
}

  GetCollectionResponse.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _userId = json['userId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    if (json['Favorites'] != null) {
      _favorites = [];
      json['Favorites'].forEach((v) {
        _favorites?.add(Favorites.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  num? _userId;
  String? _createdAt;
  String? _updatedAt;
  List<Favorites>? _favorites;
GetCollectionResponse copyWith({  num? id,
  String? name,
  num? userId,
  String? createdAt,
  String? updatedAt,
  List<Favorites>? favorites,
}) => GetCollectionResponse(  id: id ?? _id,
  name: name ?? _name,
  userId: userId ?? _userId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  favorites: favorites ?? _favorites,
);
  num? get id => _id;
  String? get name => _name;
  num? get userId => _userId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<Favorites>? get favorites => _favorites;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['userId'] = _userId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_favorites != null) {
      map['Favorites'] = _favorites?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 21
/// userId : 26
/// productId : 2
/// collectionId : 2
/// createdAt : "2025-04-29T10:25:38.634Z"
/// updatedAt : "2025-04-29T10:25:38.634Z"

class Favorites {
  Favorites({
      num? id, 
      num? userId, 
      num? productId, 
      num? collectionId, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _productId = productId;
    _collectionId = collectionId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Favorites.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _productId = json['productId'];
    _collectionId = json['collectionId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _userId;
  num? _productId;
  num? _collectionId;
  String? _createdAt;
  String? _updatedAt;
Favorites copyWith({  num? id,
  num? userId,
  num? productId,
  num? collectionId,
  String? createdAt,
  String? updatedAt,
}) => Favorites(  id: id ?? _id,
  userId: userId ?? _userId,
  productId: productId ?? _productId,
  collectionId: collectionId ?? _collectionId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  num? get userId => _userId;
  num? get productId => _productId;
  num? get collectionId => _collectionId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['productId'] = _productId;
    map['collectionId'] = _collectionId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}