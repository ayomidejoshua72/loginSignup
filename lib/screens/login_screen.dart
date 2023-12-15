import 'package:flutter/material.dart';

import 'signup_screen.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              "Login to your Account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            const CustomTextField(
                label: "Email", typeInput: TextInputType.emailAddress),
            const SizedBox(height: 15),
            const PasswordInput(),
            const SizedBox(height: 15),
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
                  "Login in",
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
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
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
                  "Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 90),
            const Center(
              child: Text(
                "- Or sign in with -",
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
        boxShadow: const [
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

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(100, 153, 150, 150),
            blurRadius: 5,
            spreadRadius: 0.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: "Password",
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          contentPadding: const EdgeInsets.all(10),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType? typeInput;
  final IconButton? suffixIcon;

  const CustomTextField(
      {super.key, required this.label, this.typeInput, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(100, 153, 150, 150),
            blurRadius: 5,
            spreadRadius: 0.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          labelText: label,
          contentPadding: const EdgeInsets.all(10),
          border: InputBorder.none,
        ),
        keyboardType: typeInput,
      ),
    );
  }
}
