part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class Loading extends ProductState {}

final class Success extends ProductState {
  List<ProductModel> Products;
  Success({required this.Products});
}

final class Error extends ProductState {}

final class Offline extends ProductState {}
