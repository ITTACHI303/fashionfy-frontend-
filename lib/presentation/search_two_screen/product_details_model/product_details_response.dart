/// id : 3
/// name : "Air Jordan 1"
/// description : "Classic basketball shoes"
/// price : 199.99
/// categoryId : 1
/// brandId : 1
/// image : "/uploads/image/image-1744372056285.png"
/// createdAt : "2025-04-22T07:42:37.518Z"
/// updatedAt : "2025-04-22T07:42:37.518Z"
/// category : {"id":1,"name":"Shoes","image":"/uploads/image/image-1744372013254.png","createdAt":"2025-03-12T10:25:03.965Z","updatedAt":"2025-03-12T10:25:03.965Z"}
/// brand : {"id":1,"name":"Nike","createdAt":"2025-03-12T10:24:42.956Z","updatedAt":"2025-03-12T10:24:42.956Z"}

class ProductDetailsResponse {
  ProductDetailsResponse({
      num? id, 
      String? name, 
      String? description, 
      num? price, 
      num? categoryId, 
      num? brandId, 
      String? image, 
      String? createdAt, 
      String? updatedAt, 
      Category? category, 
      Brand? brand,}){
    _id = id;
    _name = name;
    _description = description;
    _price = price;
    _categoryId = categoryId;
    _brandId = brandId;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _category = category;
    _brand = brand;
}

  ProductDetailsResponse.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _categoryId = json['categoryId'];
    _brandId = json['brandId'];
    _image = json['image'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
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
  Category? _category;
  Brand? _brand;
ProductDetailsResponse copyWith({  num? id,
  String? name,
  String? description,
  num? price,
  num? categoryId,
  num? brandId,
  String? image,
  String? createdAt,
  String? updatedAt,
  Category? category,
  Brand? brand,
}) => ProductDetailsResponse(  id: id ?? _id,
  name: name ?? _name,
  description: description ?? _description,
  price: price ?? _price,
  categoryId: categoryId ?? _categoryId,
  brandId: brandId ?? _brandId,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  category: category ?? _category,
  brand: brand ?? _brand,
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
  Category? get category => _category;
  Brand? get brand => _brand;

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
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    if (_brand != null) {
      map['brand'] = _brand?.toJson();
    }
    return map;
  }

}

/// id : 1
/// name : "Nike"
/// createdAt : "2025-03-12T10:24:42.956Z"
/// updatedAt : "2025-03-12T10:24:42.956Z"

class Brand {
  Brand({
      num? id, 
      String? name, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Brand.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _name;
  String? _createdAt;
  String? _updatedAt;
Brand copyWith({  num? id,
  String? name,
  String? createdAt,
  String? updatedAt,
}) => Brand(  id: id ?? _id,
  name: name ?? _name,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get name => _name;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// id : 1
/// name : "Shoes"
/// image : "/uploads/image/image-1744372013254.png"
/// createdAt : "2025-03-12T10:25:03.965Z"
/// updatedAt : "2025-03-12T10:25:03.965Z"

class Category {
  Category({
      num? id, 
      String? name, 
      String? image, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Category.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _name;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
Category copyWith({  num? id,
  String? name,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => Category(  id: id ?? _id,
  name: name ?? _name,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get name => _name;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}