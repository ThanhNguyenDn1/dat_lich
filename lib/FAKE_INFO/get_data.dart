import 'package:datlich/FAKE_INFO/fake.dart';
import 'package:datlich/model/chuyen_gia.dart';
import 'package:datlich/model/nghanh_nghe.dart';
import 'package:flutter/material.dart';

class GetData {
  List<NghanhNghe> NghanhNghes = FAKE_NGHANH_NGHE.map((e) {
    return NghanhNghe(name: e.name, id: e.id);
  }).toList();
  List<ChuyenGia> chuyengias = FAKE_CHUYEN_GIA.map((e) {
    return ChuyenGia(
        id: e.id,
        name: e.name,
        money: e.money,
        avartar: e.avartar,
        like: e.like,
        kNLV: e.kNLV,
        nLBT: e.nLBT,
        chuyenMon: e.chuyenMon);
  }).toList();

  List<ChuyenGia> getChuyenGia() {
    return this.chuyengias;
  }

  List<NghanhNghe> getNganhNghe() {
    return this.NghanhNghes;
  }

  ChuyenGia getChuyenGiaItem(int id) {
    for (int i = 0; i < this.chuyengias.length; i++) {
      if (this.chuyengias[i].id == id) {
        return chuyengias[i];
      }
    }
  }

  NghanhNghe getNghanhNgheItem(int id) {
    for (int i = 0; i < this.NghanhNghes.length; i++) {
      if (this.NghanhNghes[i].id == id) {
        return NghanhNghes[i];
      }
    }
  }
}
