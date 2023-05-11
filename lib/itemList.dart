import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  final String seats;
  final String departureTime;
  final String arivalTime;
  const ItemView({Key? key, required this.seats, required this.departureTime, required this.arivalTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadowColor: Colors.black,
          color: Colors.white,
          child: SizedBox(
            width: 430,
            height: 200,
            child: Stack(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 20),
                                  child: Icon(Icons.location_searching_outlined, color: Colors.green,size: 14,),),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0, left: 10),
                                      child: Text("Akhankha More", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4, left: 10),
                                      child: Text("$departureTime", style: TextStyle(color: Colors.black, fontSize: 16),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 20),
                                  child: Icon(Icons.location_searching_outlined, color: Colors.red,size: 14,),),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0, left: 10),
                                      child: Text("Newtown Bust Stand", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4, left: 10),
                                      child: Text("$arivalTime", style: TextStyle(color: Colors.black, fontSize: 16),),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Container(
                          height: 55,
                          width: 350,

                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.lightBlueAccent,),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                                child: Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.greenAccent,),
                                  child: Center(child: Text("$seats", style: TextStyle(color: Colors.black, fontSize: 26, ),)),
                                ),
                              ),
                              Text("Seats Available -", style: TextStyle(fontSize: 16, color: Colors.white),),
                              Text("BOOK NOW", style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(1,-0.4),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.green),
                      child: Icon(Icons.location_pin, color: Colors.black,size: 30,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );;
  }
}

