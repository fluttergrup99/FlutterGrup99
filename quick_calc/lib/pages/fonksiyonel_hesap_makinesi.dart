import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'dart:math';

class fonksiyonel extends StatefulWidget {
  const fonksiyonel({super.key});

  @override
  State<fonksiyonel> createState() => _fonksiyonelState();
}

class _fonksiyonelState extends State<fonksiyonel> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    double boy = MediaQuery.of(context).size.height;
    double en = MediaQuery.of(context).size.width;
    TextEditingController islemEdit = TextEditingController();
    TextEditingController sonucEdit = TextEditingController();

    return Scaffold(
      backgroundColor: isDarkMode
          ? const Color(0xff171C22)
          : const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            )),
        actions: [
          Switch(
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = value;
                });
              })
        ],
        flexibleSpace: SafeArea(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              icon: Image.asset('assets/images/home.png'),
              tooltip: 'AnaSayfa',
            ),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/basit');
              },
              icon: Image.asset('assets/images/calculator.png'),
              tooltip: 'Basit Hesap Makinesi',
            ),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/formuller');
              },
              icon: Image.asset('assets/images/formula.png'),
              tooltip: 'Formüller',
            ),
          ]),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: Card.filled(
              color: Colors.transparent,
              child: TextField(
                decoration: const InputDecoration(border: InputBorder.none),
                readOnly: true,
                controller: islemEdit,
                textAlign: TextAlign.end,
                style: const TextStyle(
                    color: Color(0xff828A93),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Card.filled(
              color: Colors.transparent,
              child: TextField(
                decoration: const InputDecoration(border: InputBorder.none),
                readOnly: true,
                controller: sonucEdit,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: isDarkMode
                        ? const Color.fromARGB(255, 255, 255, 255)
                        : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 48),
              ),
            ),
          ),
          Container(
            height: 10,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff160C5A),
                Color(0xff0691F0),
                Color(0xff79DDD5),
              ],
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: isDarkMode
                ? const Color(0xff171C22)
                : const Color.fromARGB(255, 255, 255, 255),
            width: en - 20,
            height: boy / 8 * 5 - 10,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: (en - 20) / 40 * 31,
                  height: boy / 8 * 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              islemEdit.clear();
                              sonucEdit.clear();
                            },
                            child: const Text(
                              "AC",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "sin(";
                              },
                              child: Math.tex(
                                r'\sin(x)',
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "cot(";
                              },
                              child: Math.tex(
                                r'\cot(x)',
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "log(";
                              },
                              child: Math.tex(
                                r'\log_{10}(x)',
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "|";
                              },
                              child: Math.tex(
                                r'\lvert x \rvert',
                                textStyle: const TextStyle(
                                  fontSize: 28,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "pi";
                              },
                              child: Math.tex(
                                r'\pi',
                                textStyle: const TextStyle(
                                  fontSize: 36,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              islemEdit.text = islemEdit.text + "1";
                            },
                            child: const Text("1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              islemEdit.text = islemEdit.text + "4";
                            },
                            child: const Text("4",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              islemEdit.text = islemEdit.text + "7";
                            },
                            child: const Text("7",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                if (islemEdit.text.endsWith("-")) {
                                  islemEdit.text = islemEdit.text
                                      .substring(0, islemEdit.text.length - 1);
                                  islemEdit.text = islemEdit.text + "+";
                                } else if (islemEdit.text.endsWith("+")) {
                                  islemEdit.text = islemEdit.text
                                      .substring(0, islemEdit.text.length - 1);
                                  islemEdit.text = islemEdit.text + "-";
                                } else {
                                  islemEdit.text = islemEdit.text + "-";
                                }
                              },
                              child: const Text("+/-",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ))),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              if (islemEdit.text.contains("(")) {
                                if (islemEdit.text.lastIndexOf('(') <
                                    islemEdit.text.lastIndexOf(')')) {
                                  islemEdit.text = islemEdit.text + "(";
                                } else {
                                  islemEdit.text = islemEdit.text + ")";
                                }
                              } else {
                                islemEdit.text = islemEdit.text + "(";
                              }
                            },
                            child: const Text(
                              "( )",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "cos(";
                              },
                              child: Math.tex(
                                r'\cos(x)',
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "sec(";
                              },
                              child: Math.tex(
                                r'\sec(x)',
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "ln(";
                              },
                              child: Math.tex(
                                r'\ln(x)',
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "kök(";
                              },
                              child: Math.tex(
                                r'\sqrt{x}',
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "e";
                              },
                              child: Math.tex(
                                r'e',
                                textStyle: const TextStyle(
                                  fontSize: 36,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              islemEdit.text = islemEdit.text + "2";
                            },
                            child: const Text("2",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              islemEdit.text = islemEdit.text + "5";
                            },
                            child: const Text("5",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "8";
                              },
                              child: const Text("8",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ))),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "0";
                              },
                              child: const Text("0",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ))),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              if (islemEdit.text.isNotEmpty) {
                                islemEdit.text = islemEdit.text
                                    .substring(0, islemEdit.text.length - 1);
                              }
                            },
                            child: const Image(
                                color: Color.fromARGB(255, 255, 255, 255),
                                width: 28,
                                height: 28,
                                image: AssetImage(
                                    'assets/images/vectorDelete.png')),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "tan(";
                              },
                              child: Math.tex(
                                r'\tan(x)',
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "cosec(";
                              },
                              child: Math.tex(
                                r'\cosec(x)',
                                textStyle: const TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "e^";
                              },
                              child: Math.tex(
                                r'e^x',
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "^";
                              },
                              child: Math.tex(
                                r'x^n',
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              islemEdit.text = islemEdit.text + "%";
                            },
                            child: const Text("%",
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              islemEdit.text = islemEdit.text + "3";
                            },
                            child: const Text("3",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                minimumSize: Size.zero,
                                fixedSize:
                                    Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                            onPressed: () {
                              islemEdit.text = islemEdit.text + "6";
                            },
                            child: const Text("6",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + "9";
                              },
                              child: const Text("9",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ))),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  minimumSize: Size.zero,
                                  fixedSize:
                                      Size((en - 20) / 4, (boy / 8 * 5) / 12)),
                              onPressed: () {
                                islemEdit.text = islemEdit.text + ".";
                              },
                              child: const Text(".",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ))),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(41, 134, 200, 1),
                          alignment: Alignment.center,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          minimumSize: Size.zero,
                          fixedSize: Size((en - 30) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "÷";
                      },
                      child: const Text("÷",
                          style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(41, 134, 200, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9)),
                            minimumSize: Size.zero,
                            fixedSize: Size((en - 30) / 5, (boy / 8 * 5) / 6)),
                        onPressed: () {
                          islemEdit.text = islemEdit.text + "×";
                        },
                        child: const Text("×",
                            style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ))),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(41, 134, 200, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          minimumSize: Size.zero,
                          fixedSize: Size((en - 30) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "-";
                      },
                      child: const Text(
                        "-",
                        style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(41, 134, 200, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          minimumSize: Size.zero,
                          fixedSize: Size((en - 30) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "+";
                      },
                      child: const Text(
                        "+",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Container(
                      width: (en - 30) / 5,
                      height: (boy / 8 * 5) / 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(22, 12, 90, 1),
                            Color.fromRGBO(6, 145, 240, 1),
                            Color.fromRGBO(121, 221, 213, 1),
                          ])),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          try {
                            String sonuc = oncelik(islemEdit.text);
                            if (sonuc.contains('.0')) {
                              sonuc = double.parse(sonuc).round().toString();
                            }
                            sonucEdit.text = sonuc;
                          } catch (e) {
                            sonucEdit.text = e.toString();
                          }
                        },
                        child: const Text("=",
                            style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String oncelik(String a) {
  List<String> calc = <String>[];

  a = a.replaceAll("e", e.toString());
  a = a.replaceAll("pi", pi.toString());
  a = a.replaceAll("--", "+");
  a = a.replaceAll("++", "+");
  a = a.replaceAll("-+", "-");
  a = a.replaceAll("+-", "-");

  while (a.contains('|') && a.contains('|', a.indexOf('|'))) {
    int index = a.indexOf('|');
    int index2 = a.indexOf('|', index + 1);
    String mutlak = a[index + 1] == '-'
        ? a.substring(index + 2, index2)
        : a.substring(index + 1, index2);

    a = a.substring(0, index) + mutlak + a.substring(index2 + 1, a.length);
  }

  if (a[0] == '+') {
    a = a.substring(1, a.length);
  }

  while (a.contains('^') || a.indexOf('^') > 0) {
    String ters = a.split('').reversed.join('');
    num us1 = num.parse(ters
        .substring(
            ters.indexOf('^') + 1,
            ters.contains(RegExp(r'[\+\-\×\÷\(\)]'), ters.indexOf('^'))
                ? a.indexOf(RegExp(r'[\+\-\×\÷\(\)]'), ters.indexOf('^'))
                : ters.length)
        .split('')
        .reversed
        .join(''));
    num us2 = num.parse(a.substring(
        a.indexOf('^') + 1,
        a.contains(RegExp(r'[\+\-\×\÷\(\)]'), a.indexOf('^'))
            ? a.indexOf(RegExp(r'[\+\-\×\÷\(\)]'), a.indexOf('^'))
            : a.length));
    a = a.substring(0, a.indexOf('^') - us1.toString().length) +
        (pow(us1, us2)).toString() +
        a.substring(a.indexOf('^') + us2.toString().length + 1, a.length);
  }
  while (a.contains('kök(')) {
    num kok = num.parse(
        a.substring(a.indexOf('kök(') + 4, a.indexOf(')', a.indexOf('kök('))));
    a = a.substring(0, a.indexOf('kök(')) +
        (sqrt(kok)).toString() +
        a.substring(a.indexOf(')', a.indexOf('kök(')), a.length);
  }

  while (a.length > 1 && a.contains(RegExp(r'[\+\-\×\÷\(\)]'))) {
    int index = a.indexOf(RegExp(r'[\+\-\×\÷\(\)]'));
    calc.add(a.substring(0, index));
    calc.add(a[index]);
    a = a.substring(index + 1, a.length);
  }
  calc.add(a);
  calc.removeWhere((item) => item == '');

  int parantez1 = 0;
  int parantez2 = 0;
  List<String> oncePar = <String>[];

  while (calc.contains("(") && calc.contains(")")) {
    parantez1 = calc.indexWhere((e) => e == "(");
    parantez2 = calc.indexWhere((e) => e == ")");
    oncePar = calc.sublist(parantez1 + 1, parantez2);
    calc[parantez1] = hesaplama(oncePar);
    calc.removeRange(parantez1 + 1, parantez2 + 1);
  }
  return hesaplama(calc);
}

String hesaplama(List<String> calc) {
  num result = 0;

  while (calc.contains('sin')) {
    int indexSin = calc.indexOf('sin');
    calc[indexSin] = sin(int.parse(calc[indexSin + 1])).toString();
    calc.removeAt(indexSin + 1);
  }
  while (calc.contains('cos')) {
    int indexCos = calc.indexOf('cos');
    calc[indexCos] = cos(int.parse(calc[indexCos + 1])).toString();
    calc.removeAt(indexCos + 1);
  }
  while (calc.contains('tan')) {
    int indexTan = calc.indexOf('tan');
    calc[indexTan] = tan(int.parse(calc[indexTan + 1])).toString();
    calc.removeAt(indexTan + 1);
  }
  while (calc.contains('cot')) {
    int indexCot = calc.indexOf('cot');
    calc[indexCot] = (1 / tan(int.parse(calc[indexCot + 1]))).toString();
    calc.removeAt(indexCot + 1);
  }
  while (calc.contains('sec')) {
    int indexSec = calc.indexOf('sec');
    calc[indexSec] = (1 / cos(int.parse(calc[indexSec + 1]))).toString();
    calc.removeAt(indexSec + 1);
  }
  while (calc.contains('cosec')) {
    int indexCosec = calc.indexOf('cosec');
    calc[indexCosec] = (1 / sin(int.parse(calc[indexCosec + 1]))).toString();
    calc.removeAt(indexCosec + 1);
  }
  while (calc.contains('log')) {
    int indexLog = calc.indexOf('log');
    calc[indexLog] = (log(int.parse(calc[indexLog + 1]))).toString();
    calc.removeAt(indexLog + 1);
  }
  while (calc.contains('ln')) {
    int indexLn = calc.indexOf('ln');
    calc[indexLn] = (log(int.parse(calc[indexLn + 1]))).toString();
    calc.removeAt(indexLn + 1);
  }

  while (calc.contains("×") || calc.contains("÷")) {
    final pos = calc.indexWhere((e) => e == "×" || e == "÷");
    num leftOp = double.parse(calc[pos - 1]);
    num rightOp = double.parse(calc[pos + 1]);
    switch (calc[pos]) {
      case "^":
        result = pow(leftOp, rightOp);
      case "×":
        result = leftOp * rightOp;
        break;
      case "÷":
        result = leftOp / rightOp;
        break;
    }
    calc.removeAt(pos);
    calc.removeAt(pos);
    calc[pos - 1] = result.toString();
  }

  while (calc.length > 1 && calc.indexOf('-') > 0 && calc.contains("-") ||
      calc.contains("+")) {
    final pos = calc.indexWhere((e) => e == "-" || e == "+");
    num leftOp = double.parse(calc[pos - 1]);
    num rightOp = double.parse(calc[pos + 1]);

    switch (calc[pos]) {
      case "-":
        result = leftOp - rightOp;
        break;
      case "+":
        result = leftOp + rightOp;
        break;
    }
    calc.removeAt(pos);
    calc.removeAt(pos);
    calc[pos - 1] = result.toString();
  }

  return calc.join('');
}
