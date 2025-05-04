import 'package:app01/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class VarifyScreen extends StatefulWidget {
  const VarifyScreen({super.key});

  @override
  State<VarifyScreen> createState() => _VarifyScreenState();
}

class _VarifyScreenState extends State<VarifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Image.asset(
                    "assets/email_icon.png",
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Verify your email address to get started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "This helps us to mitigate fraud and keep your personal data safe",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom button
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: PrimaryButton(
                title: "Send Verification Email",
                ontap: () {
                  // Your logic
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

