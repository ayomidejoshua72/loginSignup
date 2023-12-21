import 'package:authentication_page/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
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
          CustomTextField(
            label: "Email",
            typeInput: TextInputType.emailAddress,
            typedEmail: emailController,
            validate: (value) {
              if (value == null || value.isEmpty) {
                return "Email cannot be empty";
              }
              if (!value.contains("@") && !value.contains(".")) {
                return "Enter valid email";
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          PasswordInput(typedPassword: passwordController),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              String enteredEmail = emailController.text;
              String enteredPassword = passwordController.text;
              if (enteredEmail.isEmpty || enteredPassword.isEmpty || (!enteredEmail.contains(".") || !enteredEmail.contains("@"))) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please enter correct email and password"),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(
                        accountName: "Your Account Name",
                        accountEmail: enteredEmail),
                  ),
                );
              }
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
  const PasswordInput({super.key, this.typedPassword});

  final TextEditingController? typedPassword;

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
        controller: widget.typedPassword,
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
  final TextEditingController? typedEmail;
  final String? Function(String? value)? validate;

  const CustomTextField(
      {super.key,
      required this.label,
      this.typeInput,
      this.typedEmail,
      this.suffixIcon,
      this.validate});

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
      child: TextFormField(
        controller: typedEmail,
        obscureText: false,
        decoration: InputDecoration(
          labelText: label,
          contentPadding: const EdgeInsets.all(10),
          border: InputBorder.none,
        ),
        keyboardType: typeInput,
        validator: validate,
      ),
    );
  }
}
