import 'package:demo2/Views/SearchPage2.dart';
import 'package:demo2/Views/svg.dart';
import 'package:demo2/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ProductBloc()..add(GetProducts()),
          ),
        ],
        child: const SearchPage2(),
      ),
    );
  }
}
