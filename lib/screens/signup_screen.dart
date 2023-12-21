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
        foregroundColor: Colors.black.withOpacity(.2),
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
          CustomTextField(
            label: "Email",
            typeInput: TextInputType.emailAddress,
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
          const TechnicalSkillsDropdown(),
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

class TechnicalSkillsDropdown extends StatefulWidget {
  const TechnicalSkillsDropdown({super.key});

  @override
  State<TechnicalSkillsDropdown> createState() =>
      _TechnicalSkillsDropdownState();
}

class _TechnicalSkillsDropdownState extends State<TechnicalSkillsDropdown> {
  List<String> techSkills = [
    "Programming Languages",
    "Web Development",
    "Mobile App Development",
    "Database Management",
    "Cloud Computing",
    "DevOps",
    "Networking",
    "Cybersecurity",
    "Data Science and Machine Learning",
    "Big Data Technologies",
    "Version Control",
    "Web Services and APIs",
    "Operating Systems",
    "UI/UX Design",
    "Project Management",
    "Collaboration Tools",
    "IoT (Internet of Things)",
    "Virtualization",
    "Blockchain",
    "Automation Scripting",
  ];
  String? selectedTechSkill; // Default value
  double height = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      // width: 3,
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
      child: DropdownButtonFormField<String>(
        isDense: true,
        // itemHeight: 20,
        value: selectedTechSkill,
        decoration: const InputDecoration(
          labelText: "Technical Skills",
          contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
          border: InputBorder.none,
        ),

        items: techSkills.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            selectedTechSkill = newValue;
            height = 60;
          });
        },
      ),
    );
  }
}
