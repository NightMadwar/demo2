import 'package:demo2/Model/ProductModel.dart';
import 'package:demo2/Views/productpage.dart';
import 'package:demo2/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc()..add(GetProducts()),
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
            backgroundColor: const Color(0xFFFFBE00),
          ),
          bottomNavigationBar: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: const Color(0xFFFFBE00).withOpacity(0.8),
                borderRadius: const BorderRadius.all(Radius.circular(24)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.article,
                    color: Colors.white,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                  const Icon(Icons.notifications, color: Colors.white)
                ],
              ),
            ),
          ),
          drawer: const Drawer(),
          body: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              if (state is Success) {
                return SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Column(
                                  children: List.generate(state.Products.length,
                                      (index) {
                                    return Stack(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(20),
                                          width: double.infinity,
                                          height: 200,
                                          decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: Offset(0, 5),
                                                blurRadius: 8,
                                              )
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "Assets/Images/Syrian Cat.png"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          right: 10,
                                          child: Container(
                                            width: 200,
                                            height: 60,
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.red.withOpacity(0.5),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(25),
                                              ),
                                            ),
                                            child: Center(
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(30, 0, 0, 0),
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .push(
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    ProductPage(
                                                              model:
                                                                  ProductModel(
                                                                ProductId: state
                                                                    .Products[
                                                                        index]
                                                                    .ProductId,
                                                                ProductName: state
                                                                    .Products[
                                                                        index]
                                                                    .ProductName,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: const Text(
                                                        "more",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 30,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: Icon(
                                                      Icons
                                                          .arrow_right_alt_sharp,
                                                      color: Colors.white,
                                                      size: 50,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            width: 200,
                                            height: 60,
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.red.withOpacity(0.5),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                state.Products[index]
                                                    .ProductName,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
