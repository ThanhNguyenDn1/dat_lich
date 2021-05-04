

import 'package:datlich/lich_hen.dart';
import 'package:datlich/thong_bao.dart';
import 'package:datlich/trang_chu.dart';
import 'package:datlich/tuy_chon.dart';
import 'package:datlich/yeu_thich.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHome();
  }
}

class _MyHome extends State {
  int _index = 0;
  Widget _getBody(int a) {
    switch (a){
      case 0: {
        return  TrangChu();
        break;
      }
      case 1: {
        return LichHen();
        break;
      }
      case 2: {
        return YeuThich();
        break;
      }
      case 3: {
        return ThongBao();
        break;
      }
      case 4: {
        return TuyChon();
        break;
      }

    }
  }
  //Widget _getBody(int a);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _getBody(_index),
      bottomNavigationBar:Container(
        height: 90,
        child:  BottomNavigationBar(
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: this._index,

          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text("Trang chủ"),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined),
              title: Text("Lịch hẹn"),),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),
              title: Text("Yêu thích"),),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_none),
              title: Text("Thông báo"),),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
              title: Text("Tùy chọn"),),
          ],
          onTap: (index) {
            this.setState(() {
              this._index=index;
            });
          },
        ),
      )
    );
  }
}
