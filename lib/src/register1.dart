import 'package:flutter/material.dart';
import 'signin.dart';
class Register1 extends StatefulWidget {
  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  String _name;
  String _account;
  String _email;
  String _password;
  String _phoneNum;
  String _Bistroname;
  String _Bistroaddr;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Họ và Tên"),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Không Thẻ bỏ trống';
        }
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildBistronameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Tên Quán"),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Không Thẻ bỏ trống';
        }
      },
      onSaved: (String value) {
        _Bistroname = value;
      },
    );
  }

  Widget _buildBistroaddrField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Địa chỉ quán"),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Không Thẻ bỏ trống';
        }
      },
      onSaved: (String value) {
        _Bistroaddr = value;
      },
    );
  }

  Widget _buildAccount() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Tên Đăng Nhập"),
      maxLength: 16,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Không Thẻ bỏ trống';
        }
      },
      onSaved: (String value) {
        _account = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Email"),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Không Thẻ bỏ trống';
        }
        if (!RegExp(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)")
            .hasMatch(value)) {
          return "Email không hợp lệ";
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildpassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Mật Khẩu"),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Không Thẻ bỏ trống';
        }
        if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])').hasMatch(
            value)) {
          return "Mật Khẩu phải có ít nhất 1 chữ hoa , 1 chữ thường và số ";
        }
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildphoneNum() {
    return TextFormField(
      decoration: InputDecoration(labelText: "SĐT"),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Không Thẻ bỏ trống';
        }
      },
      onSaved: (String value) {
        _phoneNum = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(title: Text("Đăng Ký"),),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildNameField(),
                  _buildAccount(),
                  _buildEmail(),
                  _buildpassword(),
                  _buildphoneNum(),
                  _buildBistroaddrField(),
                  _buildBistronameField(),
                  SizedBox(height: 100),
                  RaisedButton(child: Text("Đăng ký",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }
                        _formKey.currentState.save();
                        print(_name);
                        print(_email);
                        print(_password);
                        print(_account);
                        print(_phoneNum);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignIn()));
                      }
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
