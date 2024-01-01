class Products {
  List<Product>? data;

  Products({this.data});

  Products.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Product>[];
      json['data'].forEach((v) {
        data!.add(new Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  int? id;
  String? name;
  int? price;
  String? brand;
  int? seatCount;
  int? engineSize;
  String? yearOfManufacture;
  int? establishedDate;
  int? lastModifyDate;
  String? modifyBy;
  String? description;
  String? productStatus;
  String? numOfDoor;
  String? fuelType;
  bool? used;
  List<Images>? images;

  Product(
      {this.id,
      this.name,
      this.price,
      this.brand,
      this.seatCount,
      this.engineSize,
      this.yearOfManufacture,
      this.establishedDate,
      this.lastModifyDate,
      this.modifyBy,
      this.description,
      this.productStatus,
      this.numOfDoor,
      this.fuelType,
      this.used,
      this.images});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    brand = json['brand'];
    seatCount = json['seatCount'];
    engineSize = json['engineSize'];
    yearOfManufacture = json['yearOfManufacture'];
    establishedDate = json['establishedDate'];
    lastModifyDate = json['lastModifyDate'];
    modifyBy = json['modifyBy'];
    description = json['description'];
    productStatus = json['productStatus'];
    numOfDoor = json['numOfDoor'];
    fuelType = json['fuelType'];
    used = json['used'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['brand'] = this.brand;
    data['seatCount'] = this.seatCount;
    data['engineSize'] = this.engineSize;
    data['yearOfManufacture'] = this.yearOfManufacture;
    data['establishedDate'] = this.establishedDate;
    data['lastModifyDate'] = this.lastModifyDate;
    data['modifyBy'] = this.modifyBy;
    data['description'] = this.description;
    data['productStatus'] = this.productStatus;
    data['numOfDoor'] = this.numOfDoor;
    data['fuelType'] = this.fuelType;
    data['used'] = this.used;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  String? id;
  String? filePath;
  String? productId;

  Images({this.id, this.filePath, this.productId});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    filePath = json['filePath'];
    productId = json['productId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['filePath'] = this.filePath;
    data['productId'] = this.productId;
    return data;
  }
}