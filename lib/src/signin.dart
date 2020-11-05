import 'package:flutter/material.dart';
import 'package:flutter_mybistro/src/mainscreen.dart';
import 'package:flutter_mybistro/src/register1.dart';
import 'package:flutter_mybistro/src/register2.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40,40),
                child: Container(
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red,
                    ),
                    child: FlutterLogo()),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0 , 0, 0,60),
                child: Text("Hello\nWelcome Back" , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,  0, 0, 40),
                child: TextField(
                  style: TextStyle(fontSize: 18,color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Tên Đăng Nhập",
                      labelStyle:
                      TextStyle(color:Colors.grey, fontSize: 15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,  0, 0, 40),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      style: TextStyle(fontSize: 18,color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Mật khẩu",
                          labelStyle:
                          TextStyle(color:Colors.grey, fontSize: 15)),
                    ),
                    Text("Show", style: TextStyle(color:Colors.grey,fontSize: 13,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,  0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.all(Radius.circular(8))),
                          onPressed: () {//Chuyen toi man hinh chinh
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainScreen()),
                             );
                              },
                      child: Text("Đăng Nhập")),
                ),
              ),
              Container(
                height: 130 ,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(onPressed: () {
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: Text("Xác nhận"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text("Bạn Có Muốn Kết Nối Quán Ăn Của Bạn Với MyBistro không ?"),
                                Text("Chọn Có Để chúng tôi đưa quán ăn bạn đến với mọi người.\nChọn không nếu bạn là một khách hàng"),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            Row(
                              children: <Widget>[
                                FlatButton( onPressed:(){
                                            Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Register1()),
                                            );}
                                    , child:Text("Có",style: TextStyle(color: Colors.red),)),
                              ]),
                                FlatButton(onPressed:(){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>Register2()),
                                  );}
                                  , child:Text("Không")),
                              ],
                        );
                      });

                    },
                      child:Text("Tạo Tài Khoản",
                        style: TextStyle(fontSize: 15,color:Colors.black),
                      ),
                    ),
                    FlatButton(onPressed: null,
                        child:Text("Quên mật khẩu",
                          style: TextStyle(fontSize: 12,color: Colors.blue),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  }

