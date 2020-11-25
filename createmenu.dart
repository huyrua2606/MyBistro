import 'package:flutter/material.dart';
import 'package:flutter_app123/class/dish.dart';
import 'package:flutter_app123/src/mainscreen.dart';
import 'package:flutter_app123/class/classingredient.dart';
class CreateMenu extends StatefulWidget {
  @override
  _CreateMenuState createState() => _CreateMenuState();
}

class _CreateMenuState extends State<CreateMenu> {


  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  List<IngredientClass> ListIngre =[
    IngredientClass(1,  "Gam", "Cà Rốt", "5"),
    IngredientClass(2,  "Gam", "Cà Rốt", "5"),
    IngredientClass(3,  "Gam", "Cà Rốt", "5"),
    IngredientClass(4,  "Gam", "Cà Rốt", "5"),
  ];

  List<Dish> ListDish =[
    Dish( 1 , 1 , "Phở", "30000" ),
    Dish( 1 , 2 , "Cơm", "20000" ),
    Dish( 1 , 3 , "Lẩu", "60000" ),
    Dish( 1 , 4 , "Salad", "25000" ),
    Dish( 1 , 5 , "Kem", "15000" ),
  ];


  Future<void> AddIngredientDialog(BuildContext context) async{
    int _MenuID = 1 ;
    int _DishID= ListDish.length+1;
    String _Name;
    String _Price;
    return await showDialog(context: context,builder: (context){
      return StatefulBuilder(builder: (context,setState){
        return AlertDialog(
          content: Form(
              key: _formkey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    validator: (value){
                      return value.isNotEmpty ? null :"Invalid Field";

                    },
                    onSaved: (value){
                      _Name=value;
                    },
                    decoration: InputDecoration(hintText: "Nhập Tên Của Món Ăn"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value){
                      return value.isNotEmpty ? null :"Invalid Field";
                    },
                    onSaved: ( value) {
                      _Price = value ;
                    },
                    decoration: InputDecoration(hintText: "Nhập Giá Tiền"),
                  ),
                ],
              )
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Khởi Tạo"),
              onPressed: () {
                if(_formkey.currentState.validate()){
                  _formkey.currentState.save();
                  Dish _Temp = new Dish(_MenuID,_DishID,_Name,_Price) as Dish;
                  // Temp.MinQuantity=_MinQuantity;
                  ListDish.add(_Temp);
                  Navigator.of(context).pop();
                }
              },
            )
          ],
        );
      });
    });
  }
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
                      IconButton(icon: Icon(Icons.add), onPressed: ()async {
                        await AddIngredientDialog(context);
                      },
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
                    child: ListView.builder(
                        itemCount: ListDish.length,
                        itemBuilder: (context,index){
                        final Dish = ListDish[index];
                        return Dismissible(onDismissed: (DismissDirection direction){
                        setState(() {
                             ListDish.removeAt(index);
                        });
                        },
                        secondaryBackground: Container(
                        child: Center(
                        child: Text(
                        'Xóa Món Ăn',
                        style: TextStyle(color: Colors.white),
                        ),
                        ),
                        color: Colors.red,
                        ),
                        background: Container(),
                        child: ListTile(
                        onTap: () {},
                        title: Text(ListDish[index].Name),
                        subtitle: Text(ListDish[index].Price + " VND") ,
                        ),
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        );
                        },
                        ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Widget _buildFoodItem(String imgPath, String foodName , String price){
//   return Padding(
//     padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
//     child: InkWell(
//       onTap: () {
//
//       },
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Container(
//             child: Row(
//               children: [
//                 Hero(tag: imgPath, child: Image(
//                     image: AssetImage(imgPath),
//                     fit: BoxFit.cover,
//                     height: 75.0,
//                     width: 75.0)
//                 ),
//                 SizedBox(width: 10.0),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(foodName,style: TextStyle(
//                       fontSize: 17.0,
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.bold
//                     ),
//                     ),
//                     Text(price,style: TextStyle(
//                         fontSize: 15.0,
//                         fontFamily: 'Montserrat',
//                         color: Colors.grey
//                     ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           IconButton(icon: Icon(Icons.remove), onPressed: () {},color: Colors.black,)
//         ],
//       ),
//     ),
//   );
// }