/// id : 1
/// name : "Air Jordan 1"
/// description : "Classic basketball shoes"
/// price : 199.99
/// categoryId : 1
/// brandId : 1
/// image : null
/// createdAt : "2025-03-12T10:25:22.751Z"
/// updatedAt : "2025-03-12T10:25:22.751Z"

class FetchProductsResponse {
  FetchProductsResponse({
      num? id, 
      String? name, 
      String? description, 
      num? price, 
      num? categoryId, 
      num? brandId, 
      dynamic image, 
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

  FetchProductsResponse.fromJson(dynamic json) {
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
  dynamic _image;
  String? _createdAt;
  String? _updatedAt;
FetchProductsResponse copyWith({  num? id,
  String? name,
  String? description,
  num? price,
  num? categoryId,
  num? brandId,
  dynamic image,
  String? createdAt,
  String? updatedAt,
}) => FetchProductsResponse(  id: id ?? _id,
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
  dynamic get image => _image;
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