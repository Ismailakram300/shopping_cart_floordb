/// id : 0
/// name : "Anchor Bracelet"
/// category : "Accessories"
/// imageUrl : "https://websitedemos.net/brandstore-02/wp-content/uploads/sites/150/2017/12/product-accessory2-300x300.jpg"
/// oldPrice : "0"
/// price : "150"

class Product {
  Product({
      num id, 
      String name, 
      String category, 
      String imageUrl, 
      String oldPrice, 
      String price,}){
    _id = id;
    _name = name;
    _category = category;
    _imageUrl = imageUrl;
    _oldPrice = oldPrice;
    _price = price;
}

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _category = json['category'];
    _imageUrl = json['imageUrl'];
    _oldPrice = json['oldPrice'];
    _price = json['price'];
  }
  num _id;
  String _name;
  String _category;
  String _imageUrl;
  String _oldPrice;
  String _price;
Product copyWith({  num id,
  String name,
  String category,
  String imageUrl,
  String oldPrice,
  String price,
}) => Product(  id: id ?? _id,
  name: name ?? _name,
  category: category ?? _category,
  imageUrl: imageUrl ?? _imageUrl,
  oldPrice: oldPrice ?? _oldPrice,
  price: price ?? _price,
);
  num get id => _id;
  String get name => _name;
  String get category => _category;
  String get imageUrl => _imageUrl;
  String get oldPrice => _oldPrice;
  String get price => _price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['category'] = _category;
    map['imageUrl'] = _imageUrl;
    map['oldPrice'] = _oldPrice;
    map['price'] = _price;
    return map;
  }

}