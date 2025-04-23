import 'package:app01/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: Column(
            children: [
              Image.asset("assets/foodpanda_location.png"),
              SizedBox(height: 32),
              Text("Allow location access to the next screen for",
              style: TextStyle(
                fontSize: 20,
                fontWeight:FontWeight.bold
              ),
              textAlign: TextAlign.left,
              ),
               SizedBox(height: 32),
               
          
               Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 217, 193, 201),
                    ),
                    child: Icon(Icons.delivery_dining_outlined, color:const Color.fromARGB(255, 211, 39, 96),size: 30,),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Text("Finding the best resturent and shop near you",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                    ),
                ],
               ),

               SizedBox(height: 25,),
                 Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 229, 205, 211),
                    ),
                    child: Icon(Icons.store_outlined, color:const Color.fromARGB(255, 212, 26, 97),size: 35,),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Text("Fast and more accurate delivery",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                    ),
                ],
               ),
               SizedBox(height: 150,),
               
               SizedBox(
                width: double.infinity,
                child:ElevatedButton (
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (c)=>SigninScreen()),
                     (route) => false,
                     );
                  },
                  style: ElevatedButton.styleFrom(   
                   backgroundColor: Colors.pink,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                child: Center(
                  child: Text("Continue",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),),
                ),
                ),
              
               ),

            ],
            
          ),
        ) ,
      ),
    );
  }
}