import 'package:app01/screens/Email_auth_screen.dart';
import 'package:app01/screens/password_Auth.dart';
import 'package:app01/widgets/custom_text_button.dart';
import 'package:app01/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  String firstNameText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,  // Makes sure that the layout adjusts when the keyboard opens
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (c) => PasswordAuth()),
              (route) => false,
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 17),
            child: Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(  // Ensures the content can scroll
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 35, top: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image(
                    image: AssetImage("assets/profile_icon.png"),
                    width: 70,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Let’s Get You Started!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "First let’s create your foodpanda account with dearprogrammer@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 7),
                      child: CustomTextField(
                        controller: firstNameController,
                        hintText: "First Name",
                        onchange: (value) {
                          setState(() {
                            firstNameText = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: CustomTextField(
                        controller: lastNameController,
                        hintText: "Last Name",
                        onchange: (value) {
                          setState(() {
                            // Handle last name if needed
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: CustomTextField(
                  controller: passwordController,
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueGrey,
                  ),
                  noicon: false,
                  obscureText: obscureText,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),  // Add space before the button
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                child: PrimaryButton(
                  title: "Continue",
                  ontap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (c) => EmailAuthScreen()),
                      (route) => false,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
