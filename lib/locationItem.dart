
import 'package:flutter/material.dart';

import 'main.dart';
class LocationItems extends StatelessWidget {
  final String name;
  const LocationItems({Key? key, required this.name}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap:  (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage(pickup: name,)));
    },
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            shadowColor: Colors.black,
            color: Colors.white,
            child: SizedBox(
              width: 430,
              height: 40,
              child: Center(
                child: Text("$name", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black),),
              ),),
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}




