import 'package:flutter/material.dart';
import 'package:quick_calc/pages/fonksiyonel_hesap_makinesi.dart';
import 'package:quick_calc/pages/basit_hesap_makinesi.dart';
import 'package:quick_calc/pages/formuller_sayfa.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "QuickCalc",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
              tooltip: 'Paylaş',
            )
          ],
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.4,
                    //padding: EdgeInsets.all(50),
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(color: Colors.black, width: 5),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/airdrop.jpeg',
                        ),
                      ),
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.5, 50),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 21, 39, 119), width: 3),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black),
                  child: const Text(
                    'Basit Hesap Makinesi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      yonlendir(const basit()),
                    );
                  },
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize:
                            Size(MediaQuery.of(context).size.width * 0.5, 50),
                        side: const BorderSide(
                            color: Color.fromARGB(255, 21, 39, 119), width: 3),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black),
                    child: const Text(
                      'Fonksiyonel Hesap Makinesi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        yonlendir(const fonksiyonel()),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.5, 50),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 21, 39, 119), width: 3),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black),
                  child: const Text(
                    'Formüller',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      yonlendir(const formuller()),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}

Route yonlendir(Widget child) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 600),
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
