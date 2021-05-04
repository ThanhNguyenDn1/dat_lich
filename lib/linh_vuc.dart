import 'package:datlich/FAKE_INFO/get_data.dart';
import 'package:datlich/model/chuyen_gia.dart';
import 'package:datlich/model/nghanh_nghe.dart';
import 'package:datlich/trang_chu.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'FAKE_INFO/fake.dart';
import 'chuyen_gia.dart';

class LinhVuc extends StatefulWidget {
  int id;
  LinhVuc({this.id});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LinhVuc(id: this.id);
  }
}

class _LinhVuc extends State<LinhVuc> {
  int id;
  _LinhVuc({this.id});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    NghanhNghe _nghanhNghe = GetData().getNghanhNgheItem(this.id);
    List<ChuyenGia> chuyenGias = FAKE_CHUYEN_GIA.where((element) {
      return element.chuyenMon.contains(_nghanhNghe.id);
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
                      hint: Text(
                        "${_nghanhNghe.name}",
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
                        this.setState(() {
                          this.id = index;
                        });
                      },
                      underline: Container(),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Color(0xffe2e2e2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.attach_money_sharp,
                                  size: 25,
                                  color: Color(0xffffd326),
                                ),
                                Text(
                                  "1200",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
              Padding(padding: EdgeInsets.only(top: 18)),
              Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff9f9f9),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Color(0xffd8d8d8), width: 1.5)),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 57,
                        child: FlatButton(
                          onPressed: () {},
                          child: Icon(Icons.search_rounded,
                              size: 35, color: Color(0xffd8d8d8)),
                        ),
                      ),
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
              Expanded(
                child: Container(
                  height: 250,
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
                                              padding:
                                                  EdgeInsets.only(right: 15)),
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
                                              padding:
                                                  EdgeInsets.only(right: 20)),
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                FlatButton(
                                                    minWidth: 10,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    18))),
                                                    onPressed: () {},
                                                    child: Icon(
                                                      Icons.favorite_outline,
                                                      size: 20,
                                                    ))
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
                                              padding:
                                                  EdgeInsets.only(right: 15)),
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
                                              padding:
                                                  EdgeInsets.only(right: 15)),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
