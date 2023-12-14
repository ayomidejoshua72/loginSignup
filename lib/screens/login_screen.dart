// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Text(
              "Reziela",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50),
          Text(
            "Login to your Account",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(100, 153, 150, 150),
                    blurRadius: 5,
                    spreadRadius: 0.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email",
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(100, 153, 150, 150),
                    blurRadius: 5,
                    spreadRadius: 0.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Password",
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Text(
              "Login in",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text("- Or sign in with -"),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyContainer(child: Image.asset("assets/icons/google.png")),
              MyContainer(child: Image.asset("assets/icons/facebook.png")),
              MyContainer(child: Image.asset("assets/icons/twitter.png")),
            ],
          )
        ]),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Widget child;

  const MyContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(100, 153, 150, 150),
            blurRadius: 5,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}
