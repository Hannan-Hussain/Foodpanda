import 'package:app01/screens/Login_screen.dart';
import 'package:app01/screens/password_Auth.dart';
import 'package:app01/screens/varify_screen.dart';
import 'package:app01/widgets/custom_text_button.dart';
import 'package:app01/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class EmailAuthScreen extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  String emailtext = "";
  bool obscureText = true;

  bool suffixIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.pink,
        leading: InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (c) => PasswordAuth()),
              (route) => false,
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Continue",
                style: TextStyle(
                    color: emailtext.isEmpty ? Colors.white : Colors.pink),
              )),
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
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 210),
                  child: Image.asset(
                    "assets/email_icon.png",
                    height: 80,
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "What,s your email?",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Whe,ll check if you have an account",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w200),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Email"),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  onchange: (value) {},
                  controller: emailcontroller,
                  hintText: "Email",
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blueGrey,
                  ),
                  noicon: false,
                  obscureText: obscureText,
                ),
                SizedBox(
                  height: 30,
                ),
                PrimaryButton(
                  title: "Login with Password",
                  icon: Icons.arrow_forward,
                  ontap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (c) => PasswordAuth()),
                      (route) => false,
                    );
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                PrimaryButton(
      
                  title: "Send me Login link",
                  icon: Icons.arrow_forward,
                  ontap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (c) => VarifyScreen()),
                      (route) => false,
                    );
                  },
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
