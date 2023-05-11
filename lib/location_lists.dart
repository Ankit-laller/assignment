import 'package:assignment/locationItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Places extends StatefulWidget {
  const Places({Key? key}) : super(key: key);

  @override
  State<Places> createState() => PlacesState();
}

class PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 40,),
          LocationItems(name: "delhi"),
          LocationItems(name: "gurgaon"),
          LocationItems(name: "mumbai",),
          LocationItems(name: "kolkata",),
          LocationItems(name: "Pune",),

        ],
      ),
    );
  }
}

// Widget searchBox() {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 15),
//     decoration: BoxDecoration(
//         color: Colors.white, borderRadius: BorderRadius.circular(20)
//     ),
//     child: TextField(
//       // onChanged: (value) => _runfilter(value),
//       decoration: InputDecoration(
//           contentPadding: EdgeInsets.all(0),
//           prefixIcon: Icon(
//             Icons.search,
//             color: Colors.black,
//             size: 20,
//           ),
//           prefixIconConstraints: BoxConstraints(
//             maxHeight: 20,
//             maxWidth: 25,
//           ),
//           border: InputBorder.none,
//           hintText: "Search ...",
//           hintStyle: TextStyle(color: CupertinoColors.extraLightBackgroundGray)
//       ),
//     ),
//   );
// }