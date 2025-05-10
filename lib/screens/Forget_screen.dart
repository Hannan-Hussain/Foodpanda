import 'package:app01/screens/Login_screen.dart';
import 'package:app01/screens/varify_screen.dart';
import 'package:app01/widgets/custom_text_button.dart';
import 'package:app01/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (c)=>Authscreen()),  (route) => false, ),
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: Image.asset(
                  "assets/email_icon.png",
                  height: 100,
                  width: 200,
                ),
              ),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Please enter your email address",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                hintText: "Enter your email",
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.pinkAccent,
                ),
                controller: emailController,
                noicon: false,
                obscureText: false,
              ),
              const SizedBox(height: 250), // 👈 Replaced Spacer
              PrimaryButton(
                title: "Send Mail",
                icon: Icons.mail,
                ontap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (c)=>VarifyScreen()), (route) => false,);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
