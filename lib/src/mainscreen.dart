import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
//       body: ListView(
//         children: <Widget>[
//           _top(),
//           SizedBox(height: 20.0,),
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text("Owner",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20.0,),
//           Container(
//             height: 200.0,
//             child: GridView(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,childAspectRatio:3/2),
//               children:<Widget> [
//                 _gridItem(Icons.fastfood),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//         }
//
//   _top() {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.lightBlueAccent,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(30.0),
//           bottomRight: Radius.circular(30.0),
//         )
//       ),
//       child: Column(
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   CircleAvatar(
//                     backgroundImage: AssetImage("assets/download.png"),
//                   ),
//                   SizedBox(width: 10.0,),
//                   Text("Hi Stranger",style: TextStyle(color: Colors.black),)
//                 ],
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.notifications,
//                   color: Colors.black,
//                 ),
//                 onPressed:(){},
//               )
//             ],
//           ),
//           SizedBox(height: 30.0,),
//           TextField(
//             decoration: InputDecoration(
//               hintText: "Search",
//               fillColor: Colors.black,
//               filled: true,
//               suffixIcon: Icon(Icons.filter_list)
// ,
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20.0),
//               borderSide: BorderSide(color: Colors.transparent),
//             ),
//               contentPadding: EdgeInsets.symmetric(horizontal:16.0,vertical:16.0)),
//           )
//         ]
//       ),
//     );
//   }
// }
//
// _gridItem(IconData fastfood) {
// }

