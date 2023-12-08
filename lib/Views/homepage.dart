import 'package:demo2/Views/productpage.dart';
import 'package:demo2/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(GetProducts());
    var media = MediaQuery.of(context).size;
    final width = media.width;
    TextEditingController controller = TextEditingController();

    return RefreshIndicator(
      onRefresh: () =>
          Future(() => context.read<ProductBloc>().add(GetProducts())),
      child: Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.all(30),
          child: FloatingActionButton(
            onPressed: () {},
            child: Text("+"),
          ),
        ),
        body: Center(
          child: Column(children: [
            const SizedBox(height: 30),
            SizedBox(
                width: width / 2,
                child: TextField(
                  controller: controller,
                  onChanged: (value) {
                    context.read<ProductBloc>().add(Filter(value: value));
                  },
                )),
            const SizedBox(height: 30),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is Success) {
                  return Expanded(
                    child: SizedBox(
                      width: width / 1.2,
                      child: ListView.builder(
                        itemCount: state.Products.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: InkWell(
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    ProductPage(model: state.Products[index]),
                              )),
                              child: ListTile(
                                title: Text(
                                    "Description:${state.Products[index].Description}"),
                                subtitle: Text(
                                    "Category: ${state.Products[index].category.description}"),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            )
          ]),
        ),
      ),
    );
  }
}
