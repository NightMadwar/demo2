// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
  int? ProductId;
  String ProductName;
  ProductModel({
    required this.ProductId,
    required this.ProductName,
  });

  ProductModel copyWith({
    int? ProductId,
    String? ProductName,
  }) {
    return ProductModel(
      ProductId: ProductId ?? this.ProductId,
      ProductName: ProductName ?? this.ProductName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': ProductId,
      'productName': ProductName,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      ProductId: map['productId'] as int,
      ProductName: map['productName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ProductModel(productId: $ProductId, productName: $ProductName)';

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.ProductId == ProductId && other.ProductName == ProductName;
  }

  @override
  int get hashCode => ProductId.hashCode ^ ProductName.hashCode;
}
