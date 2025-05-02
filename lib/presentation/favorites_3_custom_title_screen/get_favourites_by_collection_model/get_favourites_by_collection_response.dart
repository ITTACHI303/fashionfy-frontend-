/// id : 20
/// userId : 20
/// productId : 3
/// collectionId : 1
/// createdAt : "2025-04-29T10:18:26.749Z"
/// updatedAt : "2025-04-29T10:18:26.749Z"
/// Product : {"id":3,"name":"Air Jordan 1","description":"Classic basketball shoes","price":199.99,"categoryId":1,"brandId":1,"image":"/uploads/image/image-1744372056285.png","createdAt":"2025-04-22T07:42:37.518Z","updatedAt":"2025-04-22T07:42:37.518Z"}

class GetFavouritesByCollectionResponse {
  GetFavouritesByCollectionResponse({
      num? id, 
      num? userId, 
      num? productId, 
      num? collectionId, 
      String? createdAt, 
      String? updatedAt, 
      Product? product,}){
    _id = id;
    _userId = userId;
    _productId = productId;
    _collectionId = collectionId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _product = product;
}

  GetFavouritesByCollectionResponse.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _productId = json['productId'];
    _collectionId = json['collectionId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _product = json['Product'] != null ? Product.fromJson(json['Product']) : null;
  }
  num? _id;
  num? _userId;
  num? _productId;
  num? _collectionId;
  String? _createdAt;
  String? _updatedAt;
  Product? _product;
GetFavouritesByCollectionResponse copyWith({  num? id,
  num? userId,
  num? productId,
  num? collectionId,
  String? createdAt,
  String? updatedAt,
  Product? product,
}) => GetFavouritesByCollectionResponse(  id: id ?? _id,
  userId: userId ?? _userId,
  productId: productId ?? _productId,
  collectionId: collectionId ?? _collectionId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  product: product ?? _product,
);
  num? get id => _id;
  num? get userId => _userId;
  num? get productId => _productId;
  num? get collectionId => _collectionId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Product? get product => _product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['productId'] = _productId;
    map['collectionId'] = _collectionId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_product != null) {
      map['Product'] = _product?.toJson();
    }
    return map;
  }

}

/// id : 3
/// name : "Air Jordan 1"
/// description : "Classic basketball shoes"
/// price : 199.99
/// categoryId : 1
/// brandId : 1
/// image : "/uploads/image/image-1744372056285.png"
/// createdAt : "2025-04-22T07:42:37.518Z"
/// updatedAt : "2025-04-22T07:42:37.518Z"

class Product {
  Product({
      num? id, 
      String? name, 
      String? description, 
      num? price, 
      num? categoryId, 
      num? brandId, 
      String? image, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _description = description;
    _price = price;
    _categoryId = categoryId;
    _brandId = brandId;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _categoryId = json['categoryId'];
    _brandId = json['brandId'];
    _image = json['image'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _name;
  String? _description;
  num? _price;
  num? _categoryId;
  num? _brandId;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
Product copyWith({  num? id,
  String? name,
  String? description,
  num? price,
  num? categoryId,
  num? brandId,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => Product(  id: id ?? _id,
  name: name ?? _name,
  description: description ?? _description,
  price: price ?? _price,
  categoryId: categoryId ?? _categoryId,
  brandId: brandId ?? _brandId,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get name => _name;
  String? get description => _description;
  num? get price => _price;
  num? get categoryId => _categoryId;
  num? get brandId => _brandId;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['description'] = _description;
    map['price'] = _price;
    map['categoryId'] = _categoryId;
    map['brandId'] = _brandId;
    map['image'] = _image;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}