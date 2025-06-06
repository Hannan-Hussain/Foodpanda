import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Function() ontap;
  
  const PrimaryButton(
      {super.key, required this.title, this.icon, required this.ontap, });
    
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          height: 58,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.pinkAccent
        ,          borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}