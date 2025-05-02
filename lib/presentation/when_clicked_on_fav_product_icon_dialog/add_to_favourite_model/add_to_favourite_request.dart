class AddToFavouriteRequest {
  String? userId;
  String? productId;
  String? collectionId;
  AddToFavouriteRequest({
    this.userId,
    this.productId,
    this.collectionId,
  });

  static AddToFavouriteRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    AddToFavouriteRequest addToFavouriteRequest = AddToFavouriteRequest();
    addToFavouriteRequest.userId = map['userId'];
    addToFavouriteRequest.productId = map['productId'];
    addToFavouriteRequest.collectionId = map['collectionId'];
    return addToFavouriteRequest;
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "productId": productId,
        "collectionId": collectionId,
      };
}
