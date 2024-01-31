import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: MaterialButton(
            minWidth: 250,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            textColor: Colors.white,
            color: Colors.orange,
            onPressed: () {},
            child: const Text("Sing Up"),
          )),
          const Spacer(),
          Expanded(
              child: MaterialButton(
            elevation: 10,
            minWidth: 250,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            textColor: Colors.white,
            color: Colors.blue.shade400,
            onPressed: () {},
            child: const Text("Sing IN"),
          )),
          Spacer(),
        ],
      )),
    );
  }
}
