
import 'package:assignment/locationItem.dart';
import 'package:assignment/location_lists.dart';
import 'package:flutter/material.dart';

import 'available_vehicles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(pickup: '',)
    );
  }
}

class HomePage extends StatefulWidget {
  final String pickup;
  const HomePage({Key? key, required this.pickup} ) : super(key: key);


  @override
  State<HomePage> createState() => HomePageState(pickup, pickup);
}

class HomePageState extends State<HomePage> {
  String pickup;
  String dropp;
  HomePageState(this.pickup, this.dropp);
  final TextEditingController _pickUpController = TextEditingController();
  final TextEditingController _dropController = TextEditingController();
  final TextEditingController _date = TextEditingController();

  @override
  void initState() {
    _pickUpController.text = pickup; //default text
    _dropController.text = dropp;


    super.initState();
  }

  void drop(){
    setState(() {
    });


  }

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.lightBlue ,
      appBar: AppBar(
        title: Text("CitiRyder"),
      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, bottom: 10),
                child: Text(
                  "Select your pick up and Drop location",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  "Help us to know where you want to go",
                  style: TextStyle(color: Colors.black54,
                      fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(thickness: 1,
                  color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_searching_outlined, color: Colors.white,size: 18,),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Pick up location",
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 14),),

                                  // (textEditingController: _pickUpController, hintText: "Enter your username",
                                  //     textInputType: TextInputType.text),
                                  Container(
                                      width: 200,
                                      child: TextField(
                                          controller: _pickUpController,
                                          decoration: InputDecoration(

                                          ),
                                          style: TextStyle(color: Colors.white),
                                          onTap: (){
                                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Places()));
                                          }
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_searching_outlined, color: Colors.white,size: 18,),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                             child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Drop location",
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 14),),

                                  // (textEditingController: _pickUpController, hintText: "Enter your username",
                                  //     textInputType: TextInputType.text),
                                  Container(
                                      width: 200,
                                      child: TextField(
                                          controller: _dropController,
                                          decoration: InputDecoration(),
                                          onTap: (){
                                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Places()));

                                          }
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 30),
                    child: Text("Journey Date", style: TextStyle(color: Colors.white, fontSize: 14),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( left: 30,right: 20),
                    child: TextField(
                      controller:_date,
                      decoration: const InputDecoration(labelStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(Icons.calendar_month)
                      ),
                      onTap: () async{
                        DateTime? pickdate = await showDatePicker(context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2101));
                        if(pickdate !=null){
                          setState(() {
                            _date.text = pickdate.toIso8601String();
                          });
                        }
                      },
                    ),
                  )
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0, left: 20,right: 20),
                    child: Container(
                      height: 40,
                      width:300,
                      child: Center(child:
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondPage()));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('SAVE & CONTINUE'), // <-- Text
                            SizedBox(
                              width: 5,
                            ),
                            Icon( // <-- Icon
                              Icons.arrow_forward,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Center(
// child: Container(
// padding: EdgeInsets.only(left: 40),
// width: 10,
// height: 10,
// child: FloatingActionButton(
// child: Icon(Icons.currency_exchange),
// backgroundColor: Colors.green,
// onPressed: () {  }
// ,
//
// ),
// ),
//
// )



