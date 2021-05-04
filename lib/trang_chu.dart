import 'package:datlich/FAKE_INFO/get_data.dart';
import 'package:datlich/linh_vuc.dart';
import 'package:datlich/login.dart';
import 'package:datlich/model/chuyen_gia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'FAKE_INFO/fake.dart';
import 'chuyen_gia.dart';

class TrangChu extends StatelessWidget {
  int value;

  // Random rnd = new Random();
  List<ChuyenGia> chuyenGias = GetData().getChuyenGia();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ));
    List<ChuyenGia> stars = chuyenGias.where((e) {
      return e.like >= 450;
    }).toList();
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 45)),
            Container(
              //decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  DropdownButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff383737),
                    ),
                    hint: Text(
                      "Chọn lĩnh vực cần tìm kiếm",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xff383737)),
                    ),
                    items: FAKE_NGHANH_NGHE.map((e) {
                      return DropdownMenuItem(
                        child: Text(e.name),
                        value: e.id,
                      );
                    }).toList(),
                    onChanged: (index) {
                      value = index;
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return LinhVuc(id: value);
                      }));
                    },
                    elevation: 3,
                    underline: Container(),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Color(0xffe2e2e2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.ac_unit_outlined,
                                size: 35,
                                color: Color(0xffffd21e),
                              ),
                              Text(
                                "1200",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),

                        // Padding(padding: EdgeInsets.only(right: 10))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xfff9f9f9),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Color(0xffd8d8d8), width: 1.5)),
                child: Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 5)),
                    InkWell(
                      child: Icon(Icons.search_rounded,
                          size: 33, color: Color(0xffd8d8d8)),
                      onTap: () {
                        print("aa");
                      },
                    ),
                    Padding(padding: EdgeInsets.only(right: 3)),
                    //Padding(padding: EdgeInsets.only(right: 8)),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Tìm kiếm chuyên gia hoặc lĩnh vực...",
                            hintStyle: TextStyle(
                                fontSize: 20, color: Color(0xffd8d8d8))),
                      ),
                    )
                  ],
                )),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: <Widget>[
                Text("Chuyên gia nổi bật",
                    style: TextStyle(
                        color: Color(0xff141414),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                // Expanded(),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      // Expanded(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              print("a");
                            },
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Xem thêm",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  size: 30,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                height: 220,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: stars.length,
                    itemBuilder: (BuildContext, index) {
                      ChuyenGia chuyengia = stars[index];
                      return InkWell(
                        onTap: () {
                          ThongTinChuyenGia.showModalSheet(context, chuyengia.id);
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            width: 155,
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Column(
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(top: 7)),
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: CircleAvatar(
                                      radius: 100.0,
                                      backgroundImage:
                                          AssetImage(chuyengia.avartar),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 15)),
                                  Text(
                                    "${chuyengia.name}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Text(
                                    "Chuyên Gia",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.grey),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 15)),
                                  Text(
                                    "${NumberFormat.simpleCurrency(locale: "vi").format(chuyengia.money)}/1 giờ",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.blue),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffffcf0f),
                                        size: 17,
                                      ),
                                      Text(
                                        "(${chuyengia.like})",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10)),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      );
                    })),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "Danh sách các chuyên gia",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
                // child: Container(
                child: Container(
              child: ListView.builder(
                  itemCount: chuyenGias.length,
                  itemBuilder: (BuildContext, index) {
                    ChuyenGia chuyengia = chuyenGias[index];
                    return InkWell(
                      child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          child: Container(
                            height: 100,
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Expanded(
                                  // decoration: BoxDecoration(color: Colors.white),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(right: 15)),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage(chuyengia.avartar),
                                          radius: 100.0,
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 20)),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "${chuyengia.name}",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Chuyên Gia",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            InkWell(
                                              child: Icon(
                                                Icons.favorite_outline,
                                                size: 20,
                                              ),
                                              onTap: () {},
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(right: 25))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 8)),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(right: 15)),
                                      Text(
                                          "${NumberFormat.simpleCurrency(locale: 'vi').format(chuyengia.money)}/ 1 Giờ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.blue)),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffffcf0f),
                                              size: 17,
                                            ),
                                            Text(
                                              "(${chuyengia.like})",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 15)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                      onTap: () {
                        ThongTinChuyenGia.showModalSheet(context, chuyengia.id);
                      },
                    );
                  }),
            )) //),
          ],
        ),
      ),
    ));
  }
}
