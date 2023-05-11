import 'package:assignment/itemList.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Available Veichle"),
      ),
      body: ListView(
        children:  [
            ItemView(seats: "20", departureTime: "8:44 AM", arivalTime:"9:07 AM" ),
            ItemView(seats: "17",departureTime: "8:54 AM",arivalTime: "9:16 AM",),
            ItemView(seats: "22",departureTime: "9:14 AM",arivalTime: "9:37 AM",),
          ItemView(seats: "20", departureTime: "8:44 AM", arivalTime:"9:07 AM" ),

        ],
        ),

    );
  }
}


