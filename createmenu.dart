import 'package:flutter/material.dart';
import 'package:flutter_app123/src/mainscreen.dart';
class CreateMenu extends StatefulWidget {
  @override
  _CreateMenuState createState() => _CreateMenuState();
}

class _CreateMenuState extends State<CreateMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top:15.0, left: 10.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back_ios), onPressed:() {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>MainScreen()),
                );},
                ),
                Container(
                  width: 330.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Create Menu", style: TextStyle(fontSize: 16.0),),
                      IconButton(icon: Icon(Icons.add), onPressed: ()=>{},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40.0,),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0,right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: [
                        _buildFoodItem("assets/images/pho.png", "Món gì đó", "\24 VNĐ"),
                        // _buildFoodItem("assets/images/pho.jpeg", "Món gì đó", "\24 VNĐ"),
                        // _buildFoodItem("assets/images/pho.jpeg", "Món gì đó", "\24 VNĐ"),
                        // _buildFoodItem("assets/images/pho.jpeg", "Món gì đó", "\24 VNĐ"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildFoodItem(String imgPath, String foodName , String price){
  return Padding(
    padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
    child: InkWell(
      onTap: () {

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(tag: imgPath, child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0)
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(foodName,style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(price,style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        color: Colors.grey
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(icon: Icon(Icons.remove), onPressed: () {},color: Colors.black,)
        ],
      ),
    ),
  );
}