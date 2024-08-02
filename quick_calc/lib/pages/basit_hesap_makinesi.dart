import 'package:flutter/material.dart';

class basit extends StatefulWidget {
  const basit({super.key});

  @override
  State<basit> createState() => _basitState();
}

class _basitState extends State<basit> {
  bool isDarkMode = true;
  TextEditingController islemEdit = TextEditingController();
  TextEditingController sonucEdit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double boy = MediaQuery.of(context).size.height;
    double en = MediaQuery.of(context).size.width;
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
                Navigator.popAndPushNamed(context, '/fonksiyonel');
              },
              icon: Image.asset('assets/images/mathematics.png'),
              tooltip: 'Fonksiyonel Hesap Makinesi',
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
              child: TextFormField(
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
            width: en - 30,
            height: boy / 8 * 5 - 10,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff616161),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize:
                              Size((en - 40) / 5 + 10, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.clear();
                        sonucEdit.clear();
                      },
                      child: const Text(
                        "AC",
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                            overflow: TextOverflow.clip,
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(41, 134, 200, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize:
                              Size((en - 40) / 5 + 10, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "÷";
                      },
                      child: const Text("÷",
                          style: TextStyle(
                              fontSize: 32,
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(41, 134, 200, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9)),
                            fixedSize:
                                Size((en - 40) / 5 + 10, (boy / 8 * 5) / 6)),
                        onPressed: () {
                          islemEdit.text = islemEdit.text + "×";
                        },
                        child: const Text("×",
                            style: TextStyle(
                              fontSize: 32,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ))),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff616161),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize:
                              Size((en - 40) / 5 + 10, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        if (islemEdit.text.isNotEmpty) {
                          islemEdit.text = islemEdit.text
                              .substring(0, islemEdit.text.length - 1);
                        }
                      },
                      child: const Image(
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 40,
                          height: 40,
                          image: AssetImage('assets/images/vectorDelete.png')),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "1";
                      },
                      child: const Text(
                        "1",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "2";
                      },
                      child: const Text(
                        "2",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "3";
                      },
                      child: const Text(
                        "3",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(41, 134, 200, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize:
                              Size((en - 40) / 5 + 10, (boy / 8 * 5) / 6)),
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
                        "()",
                        style: TextStyle(
                            fontSize: 28,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "4";
                      },
                      child: const Text(
                        "4",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "5";
                      },
                      child: const Text(
                        "5",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "6";
                      },
                      child: const Text(
                        "6",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(41, 134, 200, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize:
                              Size((en - 40) / 5 + 10, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "-";
                      },
                      child: const Text(
                        "-",
                        style: TextStyle(
                            fontSize: 38,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "7";
                      },
                      child: const Text(
                        "7",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "8";
                      },
                      child: const Text(
                        "8",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "9";
                      },
                      child: const Text(
                        "9",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(41, 134, 200, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize:
                              Size((en - 40) / 5 + 10, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "+";
                      },
                      child: const Text(
                        "+",
                        style: TextStyle(
                            fontSize: 32,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
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
                      child: const Text(
                        "  +/-",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + "0";
                      },
                      child: const Text(
                        "0",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: Size((en - 40) / 5, (boy / 8 * 5) / 6)),
                      onPressed: () {
                        islemEdit.text = islemEdit.text + ".";
                      },
                      child: const Text(
                        ".",
                        style: TextStyle(
                            fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: (en - 40) / 5 + 10,
                      height: (boy / 8 * 5) / 6,
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
                            sonucEdit.text =
                                sonuc.replaceAll(RegExp(r'\.0$'), '');
                          } catch (e) {
                            sonucEdit.text = "Hatalı İşlem!!!";
                          }
                        },
                        child: const Text("=",
                            style: TextStyle(
                                fontSize: 32,
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

//Bu fonksiyon ile hesaplamanın işlem önceliğine göre yapılması sağlandı.
String oncelik(String a) {
  while (a.contains("--")) {
    List<String> b = a.split("--");
    a = b.join("+");
  }
  List<String> gelen = a.split('');
  List<String> calc = <String>[];
  //Bu while döngüsü ile işlem string ifadesi bir dizi içerisine elemanlarına ayrılarak alındı.
  while (a.length > 1) {
    int index = a.indexOf(RegExp(r'[\+\-\×\÷\(\)]'));
    if (index >= 0) {
      calc.add(a.substring(0, index));
      calc.add(a[index]);
      a = a.substring(index + 1, a.length);
    } else {
      break;
    }
  }
  calc.add(a);
  calc.removeWhere((item) => item == '');

  //Bu while döngüsü ile sayının negatif işareti ile çıkarma işleminin ayırt edilmesi sağlandı.
  //Birden fazla "-" işareti olabilir diye gelen listesi de içerisinde kontrol yapıldı.
  if (gelen.contains("-")) {
    while (gelen.indexOf("-") == 0 ||
        gelen[gelen.indexOf("-") - 1].indexOf(RegExp(r'[\+\-\×\÷]')) == 0) {
      calc[gelen.indexOf("-") + 1] =
          calc[gelen.indexOf("-")] + calc[gelen.indexOf("-") + 1];
      calc.removeAt(gelen.indexOf("-"));
      gelen.removeAt(gelen.indexOf("-"));
      if (gelen.contains("-")) {
        break;
      }
    }
  }

  int parantez1 = 0;
  int parantez2 = 0;
  List<String> oncePar = <String>[];

//Bu while döngüsü ile işlem önceliği için parantezlerin tanınması sağlandı.
  while (calc.contains("(") && calc.contains(")")) {
    parantez1 = calc.indexWhere((e) => e == "(");
    parantez2 = calc.indexWhere((e) => e == ")");
    oncePar = calc.sublist(parantez1 + 1, parantez2);
    calc[parantez1] = hesaplama(oncePar);
    calc.removeRange(parantez1 + 1, parantez2 + 1);
  }
  return hesaplama(calc);
}

//Bu fonksiyonda dört işlemin önceliğe göre hesaplanması sağlandı.
String hesaplama(List<String> calc) {
  num result = 0;
  while (calc.contains("×") || calc.contains("÷")) {
    final pos = calc.indexWhere((e) => e == "×" || e == "÷");
    num leftOp = double.parse(calc[pos - 1]);
    num rightOp = double.parse(calc[pos + 1]);
    switch (calc[pos]) {
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

  while (calc.length > 1) {
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
  return calc[0];
}


          /*
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(153, 0, 0, 0),
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff160C5A),
                    Color(0xff0691F0),
                    Color(0xff79DDD5),
                  ],
                )),
            child: TextField(
              controller: islemEdit,
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),*/


          /*
      drawer: Drawer(
          width: 330,
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Align(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calculate_rounded,
                        color: Colors.white,
                        size: 80.0,
                      ),
                      Text(
                        "QUICKCALC",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Anasayfa'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
              ),
              ListTile(
                leading: Icon(Icons.local_laundry_service),
                title: Text('Basit Hesap Makinesi'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/basit");
                },
              ),
              ListTile(
                leading: Icon(Icons.keyboard),
                title: Text('Fonksiyonel Hesap Makinesi'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/fonksiyonel");
                },
              ),
              ExpansionTile(
                leading: Icon(Icons.perm_device_information),
                title: Text('Formüller'),
                trailing: Icon(Icons.arrow_drop_down),
                children: <Widget>[
                  ListTile(
                    title: Text('Fizik', textAlign: TextAlign.center),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, "/formuller");
                    },
                  ),
                  ListTile(
                    title: Text('Kimya', textAlign: TextAlign.center),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, "/formuller");
                    },
                  ),
                  ListTile(
                    title: Text('Matematik', textAlign: TextAlign.center),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, "/formuller");
                    },
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Ekip ve İletişim'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/iletisim");
                },
              ),
            ],
          )),*/