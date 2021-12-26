import 'dart:convert';

List<product> postFromJson(String str) =>
    List<product>.from(json.decode(str).map((x) => product.fromJson(x)));

class product {
  product({
    required this.id,
    required this.isFeatured,
    required this.name,
    required this.description,
    required this.qty,
    required this.price,
    required this.discountedPrice,
    required this.category,
    required this.artist,
    required this.label,
    required this.images,
  });

  String id;
  bool isFeatured;
  String name;
  String description;
  int qty;
  int price;
  int discountedPrice;
  Artist category;
  Artist artist;
  Label label;
  List<Image> images;

  factory product.fromJson(Map<String, dynamic> json) => product(
    id: json["id"],
    isFeatured: json["is_featured"],
    name: json["name"],
    description: json["description"],
    qty: json["qty"],
    price: json["price"],
    discountedPrice: json["discounted_price"],
    category: Artist.fromJson(json["category"]),
    artist: Artist.fromJson(json["artist"]),
    label: Label.fromJson(json["label"]),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_featured": isFeatured,
    "name": name,
    "description": description,
    "qty": qty,
    "price": price,
    "discounted_price": discountedPrice,
    "category": category.toJson(),
    "artist": artist.toJson(),
    "label": label.toJson(),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
  };
}

class Artist {
  Artist({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });

  String id;
  String name;
  String image;
  String description;

  factory Artist.fromJson(Map<String, dynamic> json) => Artist(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    description: json["description"] == null ? null : json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "description": description == null ? null : description,
  };
}

class Image {
  Image({
    required this.image,
    required this.isDefaultImage,
  });

  String image;
  bool isDefaultImage;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    image: json["image"],
    isDefaultImage: json["is_default_image"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "is_default_image": isDefaultImage,
  };
}

class Label {
  Label({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Label.fromJson(Map<String, dynamic> json) => Label(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}



































//
//
//
//
// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);
//
// import 'package:meta/meta.dart';
// import 'dart:convert';
//
// List<product> productFromJson(String str) => List<product>.from(json.decode(str).map((x) => product.fromJson(x)));
//
// String productToJson(List<product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
//
//
//
// class product {
//   product({
//     required this.id,
//     required this.isFeatured,
//     required this.name,
//     required this.description,
//     required this.qty,
//     required this.price,
//     required this.discountedPrice,
//     required this.category,
//     required this.artist,
//     required this.label,
//     required this.images,
//   });
//
//   String id;
//   bool isFeatured;
//   String name;
//   String description;
//   int qty;
//   int price;
//   int discountedPrice;
//   Artist category;
//   Artist artist;
//   Label label;
//   List<Image> images;
//
//   factory product.fromJson(Map<String, dynamic> json) => product(
//     id: json["id"],
//     isFeatured: json["is_featured"],
//     name: json["name"],
//     description: json["description"],
//     qty: json["qty"],
//     price: json["price"],
//     discountedPrice: json["discounted_price"],
//     category: Artist.fromJson(json["category"]),
//     artist: Artist.fromJson(json["artist"]),
//     label: Label.fromJson(json["label"]),
//     images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "is_featured": isFeatured,
//     "name": name,
//     "description": description,
//     "qty": qty,
//     "price": price,
//     "discounted_price": discountedPrice,
//     "category": category.toJson(),
//     "artist": artist.toJson(),
//     "label": label.toJson(),
//     "images": List<dynamic>.from(images.map((x) => x.toJson())),
//   };
// }
//
// class Artist {
//   Artist({
//     required this.id,
//     required this.name,
//     required this.image,
//     required this.description,
//   });
//
//   String id;
//   String name;
//   String image;
//   String description;
//
//   factory Artist.fromJson(Map<String, dynamic> json) => Artist(
//     id: json["id"],
//     name: json["name"],
//     image: json["image"],
//     description: json["description"] == null ? null : json["description"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "image": image,
//     "description": description == null ? null : description,
//   };
// }
//
// class Image {
//   Image({
//     required this.image,
//     required this.isDefaultImage,
//   });
//
//   String image;
//   bool isDefaultImage;
//
//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//     image: json["image"],
//     isDefaultImage: json["is_default_image"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "image": image,
//     "is_default_image": isDefaultImage,
//   };
// }
//
// class Label {
//   Label({
//     required this.id,
//     required this.name,
//   });
//
//   String id;
//   String name;
//
//   factory Label.fromJson(Map<String, dynamic> json) => Label(
//     id: json["id"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//   };
// }
