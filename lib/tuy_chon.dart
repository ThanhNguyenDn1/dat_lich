import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TuyChon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ));
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xfff2f2f2),
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Positioned(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 1)),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                          color: Colors.blue),
                      height: 300,
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 40)),
                          Row(
                            children: <Widget>[
                              FlatButton(
                                minWidth: 2,
                                onPressed: () {},
                                child: Icon(
                                  Icons.arrow_back_sharp,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                color: Colors.blue,
                              ),
                              Padding(padding: EdgeInsets.only(right: 60)),
                              Text(
                                "Thông tin tài khoản",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                            height: 90,
                            width: 90,
                            child: CircleAvatar(
                              radius: 100.0,
                              backgroundImage:
                                  AssetImage("assets/avartar/user.png"),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Nguyễn Hoàng An",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.white),
                          ),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "(ChuyenGia224354***)",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xffdddddd)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
              Positioned(
                  top: 170,
                  right: 150,
                  child: Container(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      highlightColor: Colors.orange,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      onTap: () {},
                    ),
                  )),
              Positioned(
                  bottom: 40,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Hỗ trợ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Giải đáp thắc mắc",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xffb2b2b2),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Điều khoản sử dụng",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Chi tiết",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xffb2b2b2),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Giới thiệu về CallMentors",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Chi tiết",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xffb2b2b2),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Câu hỏi thường gặp",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Chi tiết",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xffb2b2b2),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Thông tin cá nhân",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Cập nhập và chỉnh sửa",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xffb2b2b2),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Cài đặt",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Đổi mật khẩu",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xffb2b2b2),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Mời bạn bè",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Chi tiết",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xffb2b2b2),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Đăng xuất",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
