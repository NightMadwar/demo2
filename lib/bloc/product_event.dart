part of 'product_bloc.dart';

@immutable
sealed class ProductEvent {}

final class GetProducts extends ProductEvent {}

final class Filter extends ProductEvent {
  String value;
  Filter({required this.value});
}
