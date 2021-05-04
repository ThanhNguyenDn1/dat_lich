import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_home.dart';

class Login extends StatefulWidget {
  static ic(){
    print("hi");
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<Login> {
  final _emailEditingController = TextEditingController();
  final _passwordEditingController = TextEditingController();
  bool _eye = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _passwordEditingController.text="";
    print("end");

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     Widget icon() {
      if (_eye == false) {
        return Icon(Icons.remove_red_eye_outlined,color: Color(0xffdddddd));
      } else
        return Icon(Icons.remove_red_eye,color: Color(0xff8e8d8d),);
    }
    bool eye(){
      if(_eye!=false){
        return false;
      }
      else return true;
    }

    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 90)),
                  Text("Đăng nhập",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text("Nhập SĐT và mật khẩu để Đăng nhập nhé!",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: Colors.grey)),
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Color(0xffefefef),width: 1.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.mail_outline,
                            color: Colors.black54,
                            size: 25,
                          ),
                          Padding(padding: EdgeInsets.only(right: 5)),
                          Text(
                            "|",
                            style: TextStyle(color: Color(0xfff4f4f4), fontSize: 50),
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Expanded(
                              child: TextField(
                                textCapitalization: TextCapitalization.sentences,
                                controller: _emailEditingController,
                                style: TextStyle(fontSize: 20),
                                cursorColor: Colors.grey,
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Email của bạn",
                                    labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 18)),
                                onChanged: (text) {
                                  // this.setState(() {
                                  //   text.toUpperCase();
                                  //   print("$text");
                                  // });
                                },
                              ))
                        ],
                      )),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Color(0xffefefef),width: 1.5)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.lock_outline,
                            color: Colors.black54,
                            size: 25,
                          ),
                          Padding(padding: EdgeInsets.only(right: 5)),
                          Text(
                            "|",
                            style: TextStyle(color: Color(0xfff4f4f4), fontSize: 50),
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Expanded(
                              child: TextField(
                                controller: _passwordEditingController,
                                style: TextStyle(fontSize: 20),
                                cursorColor: Colors.grey,
                                cursorHeight: 20,
                                obscureText: eye(),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Mật khẩu",
                                    labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 18)),
                                onChanged: (text) {

                                },
                              )),
                          FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(180))),
                              minWidth: 15,
                              onPressed: () {
                                setState(() {
                                  _eye = !_eye;
                                });
                              },

                              //  color: Color(0xffefefef),
                              child: icon()),
                        ],
                      )),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Center(
                    child:InkWell(
                      child: Text(
                        "Quên mật khẩu",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                      onTap: (){},
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:30)),
                  Center(
                    child: ButtonTheme(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                      minWidth: 400,
                      height: 55,
                      child: FlatButton(
                        splashColor: Colors.blue,
                        color: Colors.blue,
                        child: Text(
                          "Đăng nhập",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=>MyHome()));
                        },
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:20)),
                  Center(
                    child: ButtonTheme(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                      minWidth: 400,
                      height: 55,
                      child: FlatButton(
                        color:Color(0xffededed),
                        splashColor: Color(0xffededed),
                        child: Text(
                          "Đăng nhập bằng Facebook",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        onPressed: (){

                        },
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:30)),
                  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Bạn chưa có tài khoản?",style: TextStyle(fontSize: 20,),),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          InkWell(
                            child: Text(
                              "Đăng ký ngay!",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: (){

                            },
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
