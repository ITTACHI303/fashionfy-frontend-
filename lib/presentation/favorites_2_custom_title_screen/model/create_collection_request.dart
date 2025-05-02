class CreateCollectionRequest {
  num? userId;
  String? name;

  CreateCollectionRequest({
    this.userId,
    this.name,
  });

  static CreateCollectionRequest? fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    CreateCollectionRequest createCollectionRequest = CreateCollectionRequest();
    createCollectionRequest.userId = map['userId'];
    createCollectionRequest.name = map['name'];
    return createCollectionRequest;
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
      };
}
