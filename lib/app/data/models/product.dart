class Product {
  String? id;
  String? title;
  String? price;
  String? unit;
  String? quantityPerUnit;
  String? pricePerUnit;
  String? discount;
  String? image;

  Product({
    this.id,
    this.title,
    this.price,
    this.unit,
    this.quantityPerUnit,
    this.pricePerUnit,
    this.discount,
    this.image,
  });
  Product.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    title = json['title']?.toString();
    price = json['price']?.toString();
    unit = json['unit']?.toString();
    quantityPerUnit = json['quantityPerUnit']?.toString();
    pricePerUnit = json['pricePerUnit']?.toString();
    discount = json['discount']?.toString();
    if (json['image'] != null) {
      image = 'https://io.mreslam.tech/${json['image']}';
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['unit'] = unit;
    data['quantityPerUnit'] = quantityPerUnit;
    data['pricePerUnit'] = pricePerUnit;
    data['discount'] = discount;
    data['image'] = image;
    return data;
  }
}
