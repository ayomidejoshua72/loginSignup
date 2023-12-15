
import 'package:authentication_page/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          const Center(
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
          const SizedBox(height: 50),
          const Text(
            "Create an Account",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 30),
          const CustomTextField(
              label: "Email", typeInput: TextInputType.emailAddress),
          const SizedBox(height: 20),
          const CustomTextField(
            label: "Full Name",
            typeInput: TextInputType.name,
          ),
          const SizedBox(height: 20),
          const CustomTextField(
            label: "Phone Number",
            typeInput: TextInputType.phone,
          ),
          const SizedBox(height: 20),
          const PasswordInput(),
          const SizedBox(height: 20),
          
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: const Text(
                "Sign up",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Center(
            child: Text(
              "or",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: const Text(
                "Login in",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(height: 70),
          const Center(
            child: Text(
              "- Or sign up with -",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyContainer(child: Image.asset("assets/icons/google.png")),
              MyContainer(child: Image.asset("assets/icons/facebook.png")),
              MyContainer(child: Image.asset("assets/icons/twitter.png")),
            ],
          )
        ],
      ),
    );
  }
}
