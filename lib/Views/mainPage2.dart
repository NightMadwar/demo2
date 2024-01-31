import 'package:demo2/bloc/product_bloc.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage2 extends StatelessWidget {
  const MainPage2({super.key});

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
                return Padding(
                  padding: const EdgeInsets.all(30),
                  child: ListView.builder(
                    itemCount: state.Products.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        child: Column(
                          children: [
                            Divider(
                              height: 20.0,
                              thickness: 3.0,
                              color: Colors.grey.shade400,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                            Card(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 50,
                                        child: FlutterLogo(),
                                      ),
                                      Text("Profile")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 150,
                                    child: FlutterLogo(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.abc)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.abc)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.abc)),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: ChoiceChip(
                                            label: Text("House"),
                                            selected: false),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: ChoiceChip(
                                            label: Text("House"),
                                            selected: false),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: ChoiceChip(
                                            label: Text("House"),
                                            selected: false),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.all(20),
                                      child: ExpandableText(
                                        "This is a long description that spans multiple lines. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                        expandText: 'show more',
                                        collapseText: 'show less',
                                        maxLines: 2,
                                        linkColor: Colors.grey,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
