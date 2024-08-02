import 'package:flutter/material.dart';
import 'package:quick_calc/pages/anasayfa.dart';
import 'package:quick_calc/pages/basit_hesap_makinesi.dart';
import 'package:quick_calc/pages/fonksiyonel_hesap_makinesi.dart';
import 'package:quick_calc/pages/formuller_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/basit": (context) => const basit(),
        "/fonksiyonel": (context) => const fonksiyonel(),
        "/formuller": (context) => const formuller(),
      },
      title: 'QuickCalc',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Anasayfa(),
      debugShowCheckedModeBanner: false,
    );
  }
}
