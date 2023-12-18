import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen(
      {super.key, required this.accountName, required this.accountEmail});
  final String accountName;
  final String accountEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: Container(
        width: 300,
        color: Colors.white,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(accountName),
              accountEmail: Text(accountEmail),
              currentAccountPicture: const CircleAvatar(
                child: Image(
                  image: AssetImage("assets/icons/google.png"),
                ),
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
