import 'package:flutter/material.dart';
import 'package:uyishi/pages/country_page.dart';
import 'package:uyishi/pages/login_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (ctx) {
              return LoginPage();
            }));
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 230),
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Create your account for you schedule",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 370,
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.person),
                    label: const Text("Your Name"),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 370,
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.email),
                    label: const Text("Email Address"),
                    errorText: errorMessage.isEmpty ? null : errorMessage,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 370,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.password),
                    label: const Text("Password"),
                  ),
                ),
              ),
              Container(
                width: 370,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.password),
                    label: const Text("Restart Password"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "your have an account",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text(
                    "Sign in here",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 200),
              Container(
                width: 370,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {
                     Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (ctx) {
                      return CountryWidget();
                    }));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "By continuing, you agree to Loan's",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Terms of use & Privasy policy",
                style: TextStyle(color: Colors.black, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
