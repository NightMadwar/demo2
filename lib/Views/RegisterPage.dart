import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset("Assets/Icons/1logo@4x.png"),
              )),
          const Spacer(flex: 1),
          Expanded(
              child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange),
                width: media.width / 2 * 1.4,
                child: const Center(
                    child: Text(
                  "Sing Up",
                  style: TextStyle(color: Colors.white),
                ))),
          )),
          const Spacer(),
          Expanded(
              child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                width: media.width / 2 * 1.4,
                child: const Center(
                    child: Text(
                  "Sing In",
                  style: TextStyle(color: Colors.white),
                ))),
          )),
          const Spacer(),
        ],
      )),
    );
  }
}
