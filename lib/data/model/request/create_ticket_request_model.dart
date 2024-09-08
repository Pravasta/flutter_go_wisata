import 'dart:convert';

class CreateTicketRequestModel {
  final String? name;
  final int? price;
  final int? stock;
  final int? categoryId;
  final String? criteria;

  CreateTicketRequestModel({
    this.name,
    this.price,
    this.stock,
    this.categoryId,
    this.criteria,
  });

  factory CreateTicketRequestModel.fromJson(String str) =>
      CreateTicketRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CreateTicketRequestModel.fromMap(Map<String, dynamic> json) =>
      CreateTicketRequestModel(
        name: json["name"],
        price: json["price"],
        stock: json["stock"],
        categoryId: json["category_id"],
        criteria: json["criteria"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "price": price,
        "stock": stock,
        "category_id": categoryId,
        "criteria": criteria,
      };
}
