import 'package:flutter/material.dart';

class Authscreen extends StatefulWidget {
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        children: [
          Container(
            height:MediaQuery.of(context).size.height /1.8,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.close, color: Colors.white,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 27),
                  child: Center(
                    child: Image.asset("assets/auth_back.png",
                    height: 300,),
                  ),
                ),
                
              ],
            ),
          ),
          Expanded(child: Container(
            width: double.infinity,
            padding: EdgeInsetsDirectional.symmetric(vertical: 7, horizontal: 18),
            
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),

            )

            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text("Sign up or Login",
                     style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                     ),),
                     SizedBox(height: 8,),
                       Text("Select your Preferred Method To Continue",
                       textAlign: TextAlign.left,
                     style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                     ),),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 58,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/google_icon.webp",width: 25,),

                      Text("Continue with google",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,
                      color: Colors.grey),
                      ),
                      SizedBox(width: 20,)
                      ],
                    ),
                  ),
                  
                ),
                 SizedBox(height: 15,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 58,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/facebook_icon.png",width: 25,),

                      Text("Continue with Facbook",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,
                      color: Colors.white),
                      ),
                      SizedBox(width: 20,)
                      ],
                    ),
                  ),
                  
                ),
                 SizedBox(width: 20,),
                 Row(
                  children: [
                    Expanded(child: Divider(
                      color: Colors.grey,
                    )),
                    Text("  oR   "),

                    Expanded(child: Divider(
                      color: Colors.grey,
                    ))
                  ],
                 ),
                 
                 SizedBox(height: 15,),
                InkWell(
                  onTap: (){},
         
                  child: Container(
                    height: 58,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Icon(Icons.email),

                      Text("Continue with Email",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,
                      color: Colors.black),
                      ),
                      SizedBox(width: 20,)
                      ],
                    ),
                  ),
                  
                ),
              ],
            ),
          ))
          
                 ],
      ),
    );
  }
}