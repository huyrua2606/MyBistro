
import 'package:flutter_app123/class/classingredient.dart';
import 'package:flutter_app123/class/choiceclass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app123/src/mainscreen.dart';
class Ingredient extends StatefulWidget {
  @override
  _IngredientState createState() => _IngredientState();
}

class _IngredientState extends State<Ingredient> {

  List<MyChoice> choices= [
    MyChoice ( 0,"Gam"),
    MyChoice ( 1,"lit"),
  ];
  IngredientClass Temp ;
  List<IngredientClass> ListIngre =[
    IngredientClass(1,  "Gam", "Cà Rốt", 5),
    IngredientClass(2,  "Gam", "Cà Rốt", 5),
    IngredientClass(3,  "Gam", "Cà Rốt", 5),
    IngredientClass(4,  "Gam", "Cà Rốt", 5),
  ];
  String default_choice ="Gam";
  int default_index = 0;
  MyChoice Choice;

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();


  Future<void> AddIngredientDialog(BuildContext context) async{
    String _Name;
    int _MinQuantity;
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
                    onSaved: (String value){
                        Temp.setName(value);
                    },
                      decoration: InputDecoration(hintText: "Nhập Tên Của Nguyên Liệu"),
                    ),
                    Wrap(
                      children: <Widget>[
                        Text("Chọn Đơn Vị Đo :"),
                        Container(
                          child: Column(
                            children: choices.map((data) => RadioListTile(
                                title: Text(data.Choice),
                                value: data.Index,
                                groupValue: default_index,
                                onChanged: (value) {
                                setState(() {
                                  default_choice=data.Choice;
                                  default_index=data.Index;
                                });
                                Temp.setCalUnit(default_choice);
                                }
                            )).toList(),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      validator: (value){
                        return value.isNotEmpty ? null :"Invalid Field";
                      },
                      onSaved: (String value){
                        Temp.setMinQuantity(value);
                      },
                      decoration: InputDecoration(hintText: "Nhập Số Lượng của Nguyên Liệu"),
                    ),
                  ],
                )
            ),
            actions: <Widget>[
              TextButton(
                child: Text("Khởi Tạo"),
                onPressed: () {
                  if(_formkey.currentState.validate()){
               
                    // Temp.Name=_Name;
                    // Temp.MinQuantity=_MinQuantity;
                      ListIngre.add(Temp);

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
                      Text("Ingredient List", style: TextStyle(fontSize: 16.0),),
                      IconButton(icon: Icon(Icons.add), onPressed: () async {
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
                      itemCount: ListIngre.length,
                      itemBuilder: (context,index){
                        return Card(
                          child: ListTile(
                            onTap: () {},
                            title: Text(ListIngre[index].Name),

                          ),
                        );
                      },
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


  // Widget _buildIngredientItem(IngredientClass ingredient){
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
  //                 Hero(tag: ingredient.ImgPath, child: Image(
  //                     image: AssetImage("imgPath"),
  //                     fit: BoxFit.cover,
  //                     height: 75.0,
  //                     width: 75.0)
  //                 ),
  //                 SizedBox(width: 10.0),
  //                 Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Text(ingredient.Name,style: TextStyle(
  //                         fontSize: 17.0,
  //                         fontFamily: 'Montserrat',
  //                         fontWeight: FontWeight.bold
  //                     ),
  //                     ),
  //                     Row(
  //                       children: [
  //                         Text(ingredient.MinQuantity.toString(),style: TextStyle(
  //                             fontSize: 15.0,
  //                             fontFamily: 'Montserrat',
  //                             color: Colors.grey
  //                         ),
  //                         ),
  //                         Text(ingredient.CalUnit,style: TextStyle(
  //                             fontSize: 12.0,
  //                             fontFamily: 'Montserrat',
  //                             color: Colors.grey
  //                         ),
  //                         )
  //                       ],
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
}



