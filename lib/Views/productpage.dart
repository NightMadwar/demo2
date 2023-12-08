// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:demo2/Model/ProductModel.dart';

class ProductPage extends StatelessWidget {
  final ProductModel model;
  const ProductPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 100),
        child: Center(
            child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 200, height: 200, child: FlutterLogo()),
                Container(
                    width: 250,
                    height: 100,
                    child: Text("Product ${model.Description}")),
                Container(
                    width: 250,
                    height: 100,
                    child: Text("Category ${model.category.description}")),
                Container(
                  width: 250,
                  height: 100,
                  child: Text(
                      "Proident enim qui amet veniam amet dolor quis et minim labore amet ut."),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
