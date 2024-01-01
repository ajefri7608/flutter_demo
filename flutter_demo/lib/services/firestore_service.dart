import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_demo/model/products.dart';

final productsRef = FirebaseFirestore.instance;

const fakeData = <String, dynamic>{
  "data": [
    {
      "id": 54,
      "name": "car_x1",
      "price": 3500,
      "brand": "Ford",
      "seatCount": 4,
      "engineSize": 5000,
      "yearOfManufacture": "2021",
      "establishedDate": 20210131,
      "lastModifyDate": 20210131,
      "modifyBy": "root",
      "description": "2021-01-31",
      "productStatus": "2021-01-31",
      "numOfDoor": null,
      "fuelType": null,
      "used": true,
      "images": [
        {"id": "1", "filePath": "assets/product/car1.jpg", "productId": "54"},
        {"id": "3", "filePath": "assets/product/car2.jpg", "productId": "55"},
        {"id": "3", "filePath": "assets/product/car3.jpg", "productId": "55"}
      ]
    },
    {
      "id": 55,
      "name": "car_y1",
      "price": 15000,
      "brand": "Honda",
      "seatCount": 4,
      "engineSize": 5000,
      "yearOfManufacture": "2021",
      "establishedDate": 20210131,
      "lastModifyDate": 20210131,
      "modifyBy": "root",
      "description": "2021-01-31",
      "productStatus": "2021-01-31",
      "numOfDoor": null,
      "fuelType": null,
      "used": false,
      "images": [
        {"id": "3", "filePath": "assets/product/car2.jpg", "productId": "55"}
      ]
    },
    {
      "id": 56,
      "name": "car_z1",
      "price": 12000,
      "brand": "Toyota",
      "seatCount": 4,
      "engineSize": 5000,
      "yearOfManufacture": "2021",
      "establishedDate": 1661765193,
      "lastModifyDate": 1661765193,
      "modifyBy": "root",
      "description": "1661765193",
      "productStatus": "1661765193",
      "numOfDoor": null,
      "fuelType": null,
      "used": true,
      "images": [
        {"id": "3", "filePath": "assets/product/car3.jpg", "productId": "55"}
      ]
    },
    {
      "id": 57,
      "name": "car_x2",
      "price": 11000,
      "brand": "Honda",
      "seatCount": 4,
      "engineSize": 5000,
      "yearOfManufacture": "2021",
      "establishedDate": 1661765193,
      "lastModifyDate": 1661765193,
      "modifyBy": "root",
      "description": "1661765193",
      "productStatus": "1661765193",
      "numOfDoor": null,
      "fuelType": null,
      "used": false,
      "images": [
        {"id": "3", "filePath": "assets/product/car1.jpg", "productId": "55"}
      ]
    },
    {
      "id": 58,
      "name": "car_y2",
      "price": 8000,
      "brand": "Toyota",
      "seatCount": 4,
      "engineSize": 5000,
      "yearOfManufacture": "2021",
      "establishedDate": 1661765193,
      "lastModifyDate": 1661765193,
      "modifyBy": "root",
      "description": "1661765193",
      "productStatus": "1661765193",
      "numOfDoor": null,
      "fuelType": null,
      "used": false,
      "images": [
        {"id": "3", "filePath": "assets/product/car2.jpg", "productId": "55"}
      ]
    },
    {
      "id": 59,
      "name": "car_z2",
      "price": 9000,
      "brand": "Honda",
      "seatCount": 4,
      "engineSize": 5000,
      "yearOfManufacture": "2021",
      "establishedDate": 1661765193,
      "lastModifyDate": 1661765193,
      "modifyBy": "root",
      "description": "1661765193",
      "productStatus": "1661765193",
      "numOfDoor": null,
      "fuelType": null,
      "used": true,
      "images": [
        {"id": "3", "filePath": "assets/product/car3.jpg", "productId": "55"}
      ]
    },
    {
      "id": 60,
      "name": "car_x3",
      "price": 5000,
      "brand": "Ford",
      "seatCount": 4,
      "engineSize": 5000,
      "yearOfManufacture": "2021",
      "establishedDate": 1661765193,
      "lastModifyDate": 1661765193,
      "modifyBy": "root",
      "description": "1661765193",
      "productStatus": "1661765193",
      "numOfDoor": null,
      "fuelType": null,
      "used": false,
      "images": [
        {"id": "3", "filePath": "assets/product/car1.jpg", "productId": "55"}
      ]
    }
  ]
};

Future<void> addFakeProductData() {
  // Call the user's CollectionReference to add a new user
  return productsRef
      .collection("Products")
      .doc('Car Products')
      .set(fakeData)
      .then((value) => print("Products Added"))
      .catchError((error) => print("Failed to add Products: $error"));
}

Future<void> loadFakeProductData() async {
  Products products = await productsRef
      .collection("Products")
      .doc('Car Products')
      .withConverter(
          fromFirestore: (snapshot, _) => Products.fromJson(snapshot.data()!),
          toFirestore: (product, _) => product.toJson())
      .get()
      .then((snapshot) => snapshot.data()!);
  print('aaaaa');
  print(products);
}
