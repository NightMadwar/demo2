// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:demo2/Model/CategoryModel.dart';

class ProductModel {
  String Description;
  CategoryModel category;
  ProductModel({
    required this.Description,
    required this.category,
  });

  ProductModel copyWith({
    String? Description,
    CategoryModel? category,
  }) {
    return ProductModel(
      Description: Description ?? this.Description,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': Description,
      'category': category.toMap(),
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      Description: map['description'] as String,
      category: CategoryModel.fromMap(map['category'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ProductModel(Description: $Description, category: $category)';

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.Description == Description && other.category == category;
  }

  @override
  int get hashCode => Description.hashCode ^ category.hashCode;
}
