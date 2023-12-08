import 'package:bloc/bloc.dart';
import 'package:demo2/Model/ProductModel.dart';
import 'package:demo2/Service/GetData.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<GetProducts>((event, emit) async {
      emit(Loading());
      try {
        dynamic temp = await Get().dioGet();
        if (temp is Response) {
          List<ProductModel> Products =
              List.generate(temp.data.length, (index) {
            // print(temp.data[index]);
            return ProductModel.fromMap(temp.data[index]);
          });
          // print(Products.length);
          // print(Products.runtimeType);
          emit(Success(Products: Products));
        }
      } catch (e) {
        print(e);
      }
    });
    on<Filter>(
      (event, emit) async {
        emit(Loading());
        try {
          print(event.value);
          dynamic temp = await Get().diofilter(event.value);
          print(temp);
          // print(temp.)
          if (temp is Response) {
            List<ProductModel> Products =
                List.generate(temp.data.length, (index) {
              return ProductModel.fromMap(temp.data[index]);
            });
            emit(Success(Products: Products));
          }
        } catch (e) {
          print(e);
        }
      },
    );
  }
}
