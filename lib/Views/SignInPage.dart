import 'package:demo2/Components/MainInput.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Spacer(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset("Assets/Icons/1logo@4x.png"),
          )),
          Expanded(
            flex: 2,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: MainInput(title: "Email")),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: MainInput(title: "Password")),
              SizedBox(height: 20),
              MaterialButton(
                minWidth: 250,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                textColor: Colors.white,
                color: Colors.orange,
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Spacer()
            ]),
          ),
          InkWell(onTap: () {}, child: Text("Forget Password?")),
          Spacer(),
          MaterialButton(
            minWidth: 300,
            color: Colors.blue.shade400,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Text("Create new Account"),
          ),
          SizedBox(height: 20),
        ]),
      ),
    );
  }
}
