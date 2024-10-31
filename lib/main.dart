import 'package:flutter/material.dart';
import 'package:perlu_tukang/screen/Akun.dart';
import 'package:perlu_tukang/screen/DaftarTukang.dart';
import 'package:perlu_tukang/screen/HomePage.dart';
import 'package:perlu_tukang/screen/IsiSaldo.dart';
import 'package:perlu_tukang/screen/LandingPage.dart';
import 'package:perlu_tukang/screen/TransaksiPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => LandingPage(),
      '/beranda': (context) => HomePage(),
      '/transaksi': (context) => TransaksiPage(),
      '/registrasi': (context) => DaftarTukang(),
      '/isi saldo': (context) => IsiSaldo(),
      '/akun': (context) => Akun()
    },
  ));
}
