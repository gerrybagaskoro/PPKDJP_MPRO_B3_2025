// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class MakananRinganModel {
  final String namaMakanan;
  final int hargaMakanan;
  final Color warnaMakanan;
  MakananRinganModel({
    required this.namaMakanan,
    required this.hargaMakanan,
    required this.warnaMakanan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namaMakanan': namaMakanan,
      'hargaMakanan': hargaMakanan,
      'warnaMakanan': warnaMakanan.value,
    };
  }

  factory MakananRinganModel.fromMap(Map<String, dynamic> map) {
    return MakananRinganModel(
      namaMakanan: map['Nama Snack'] as String,
      hargaMakanan: map['Harga Makanan'] as int,
      warnaMakanan: Color(map['Warna'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory MakananRinganModel.fromJson(String source) =>
      MakananRinganModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
