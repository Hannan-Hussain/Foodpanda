import 'package:app01/screens/Forget_screen.dart';
import 'package:flutter/material.dart';
import 'package:app01/screens/Login_screen.dart';
import 'package:app01/widgets/custom_text_button.dart';
import 'package:app01/widgets/primary_button.dart';

class PasswordAuth extends StatefulWidget {
  @override
  _PasswordAuthState createState() => _PasswordAuthState();
}

class _PasswordAuthState extends State<PasswordAuth> {
  TextEditingController passwordController = TextEditingController();

  String emailtext = "";
  bool obscureText = true;

// Example, replace with actual logic

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.pink,
        leading: InkWell(
         onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (c)=>Authscreen()),  (route) => false,
                     );
                  },
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        actions: [
         
             Text(
              "Continue",
              style: TextStyle(
                color: Colors.white
              
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 210),
                    child: Image.asset(
                      "assets/login_icon.png",
                      height: 80,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Login with your email?",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Login with your password $emailtext or get login link via email",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w200),
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
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
                  SizedBox(height: 10,),

   InkWell(
                   onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (c) => ForgetScreen()),
              (route) => false,
            );
            },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "I forget my password",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                  
                  
                  Spacer(),
                  PrimaryButton(
                    title: "Continue",
                    icon: Icons.arrow_forward,
                    ontap: () {
                      // Add your login logic here
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
