import 'package:datlich/dat_lich.dart';
import 'package:datlich/model/chuyen_gia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'FAKE_INFO/get_data.dart';
import 'trang_chu.dart';

class ThongTinChuyenGia extends StatelessWidget {




  static Future showModalSheet(BuildContext context, int id) {
    ChuyenGia chuyenGia = GetData().getChuyenGiaItem(id);
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      context: context,
      builder: (context) {
        return Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: MediaQuery.of(context).size.height / 2 - 130,
                child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 175,
                  left: 0,
                  right: 0,
                  // top: MediaQuery.of(context).size.height/2-100,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(180)),
                            color: Colors.white,
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                          height: 90,
                          width: 90,
                          child: CircleAvatar(
                            radius: 100.0,
                            backgroundImage: AssetImage(chuyenGia.avartar),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "${chuyenGia.name}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Text(
                          "Chuyên Gia",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.grey),
                        ),
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "${NumberFormat.simpleCurrency(locale: "vi").format(chuyenGia.money)}/1 Giờ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                            Padding(padding: EdgeInsets.only(right: 20)),
                            Icon(
                              Icons.star,
                              color: Color(0xffffcf0f),
                              size: 17,
                            ),
                            Text(
                              "(${chuyenGia.like})",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 17)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  _selectDate(BuildContext context) async {
                                    DateTime selectedDate = DateTime.now();
                                    final DateTime picked = await showDatePicker(
                                      context: context,
                                      initialDate: selectedDate,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2025),
                                    );
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 27, vertical: 13),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.blue),
                                  child: Text(
                                    "Đặt lịch",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 7)),
                            Expanded(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 13),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xfffff3e8)),
                                child: Text(
                                  "Xem đánh giá",
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xffff7b00)),
                                ),
                              ),
                            )),
                            Padding(padding: EdgeInsets.only(right: 7)),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xffffffdb)),
                                  child: Text(
                                    "Yêu thích",
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xfffcd22a)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          //decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Lĩnh vực chuyên môn",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Container(
                          //decoration: BoxDecoration(border: Border.),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: chuyenGia.chuyenMon.length,
                              itemBuilder: (BuildContext, index) {
                                return Center(
                                    child: Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                          border:
                                              Border.all(color: Colors.grey)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Text(
                                        "${GetData().getNghanhNgheItem(chuyenGia.chuyenMon[index]).name}",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ));
                              }),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          height: 1,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)),
                        ),
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          //decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "NĂNG LỰC BẢN THÂN",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Text(
                          "${chuyenGia.nLBT}",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          //decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "KINH NGHIỆM LÀM VIỆC",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Text(
                          "${chuyenGia.kNLV}",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 115,
                  right: 30,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Chi tiết hồ sơ",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  )),
            ],
          ),
        );
      },
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}
