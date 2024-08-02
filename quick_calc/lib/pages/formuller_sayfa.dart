import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class formuller extends StatefulWidget {
  const formuller({super.key});

  @override
  State<formuller> createState() => _formullerState();
}

class _formullerState extends State<formuller> {
  bool isDarkMode = true;
  List<Widget> _items = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _scaffoldKey.currentState?.openDrawer();
    });
  }

  Widget _buildFormulaCard(String title, String formula) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.grey[850],
      child: ListTile(
        title: Center(
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        subtitle: Center(
          child: Math.tex(
            formula,
            textStyle: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double en = MediaQuery.of(context).size.width;
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: isDarkMode
            ? const Color(0xff171C22)
            : const Color.fromARGB(255, 255, 255, 255),
        drawer: Drawer(
            width: en,
            child: ListView(
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calculate_rounded,
                        color: Colors.white,
                        size: 80.0,
                      ),
                      Text(
                        "QUICKCALC FORMÜLLER",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
                ExpansionTile(
                    leading: Image.asset('assets/images/fizik.jpeg'),
                    initiallyExpanded: true,
                    title: const Text('Fizik'),
                    trailing: const Icon(Icons.arrow_drop_down),
                    children: [
                      ListTile(
                        title: const Text(
                          'Dairesel Hareket',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.add(_buildFormulaCard('Açısal Hız',
                                r'\omega = \frac{\Delta \theta}{\Delta t}'));
                            _items.add(_buildFormulaCard(
                                'Merkezcil Kuvvet', r'F_c = m \frac{v^2}{r}'));
                            _items.add(_buildFormulaCard('Dönme Enerjisi',
                                r'K = \frac{1}{2} I \omega^2'));
                          });
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Kinematik',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.addAll([
                              _buildFormulaCard('Ortalama Hız',
                                  r'v_{\text{ortalama}} = \frac{\Delta x}{\Delta t}'),
                              _buildFormulaCard('Anlık Hız', r'\frac{dx}{dt}'),
                              _buildFormulaCard('Ortalama İvme',
                                  r'\frac{\Delta v}{\Delta t} = \frac{v_t - v_0}{t}'),
                              _buildFormulaCard(
                                  'Anlık İvme', r'\frac{dv}{dt} = a(t)'),
                              _buildFormulaCard(
                                  'Düzgün Doğrusal Hareket Konum Denklemi',
                                  r'x = x_0 + v_0 t + \frac{1}{2} a t^2'),
                              _buildFormulaCard(
                                  'Düzgün Hızlanan Doğrusal Hareket Konum Denklemi',
                                  r'x(t) = x_0 + v_0 t + \frac{1}{2} a t^2'),
                              _buildFormulaCard(
                                  'Hız Denklemi', r'v(t) = v_0 + a t'),
                            ]);
                          });
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Newton\'un Hareket Yasaları',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.addAll([
                              _buildFormulaCard('Newton\'un Birinci Yasası',
                                  r'\sum \vec{F} = 0 \quad _\text{(durgun veya sabit hızda)}'),
                              _buildFormulaCard('Newton\'un İkinci Yasası',
                                  r'\sum \vec{F} = m \vec{a}'),
                              _buildFormulaCard('Newton\'un Üçüncü Yasası',
                                  r'\vec{F}_{12} = -\vec{F}_{21}'),
                            ]);
                          });
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'İndüksiyon',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.addAll([
                              _buildFormulaCard('Faraday\'ın İndüksiyon Yasası',
                                  r'\mathcal{E} = -N \frac{d\Phi_B}{dt}'),
                              _buildFormulaCard('Lenz Yasası',
                                  r'\mathcal{E} = -\frac{d\Phi_B}{dt}'),
                              _buildFormulaCard('İndüklenen EMF',
                                  r'\mathcal{E} = B l v \sin(\theta)'),
                              _buildFormulaCard('Kendi İndüksiyon',
                                  r'\mathcal{E}_L = -L \frac{dI}{dt}'),
                              _buildFormulaCard('Karşılıklı İndüksiyon',
                                  r'\mathcal{E}_{21} = -M \frac{dI_1}{dt}'),
                            ]);
                          });
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Manyetizma',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.addAll([
                              _buildFormulaCard('Manyetik Alan',
                                  r'B = \frac{\mu_0 I}{2 \pi r}'),
                              _buildFormulaCard(
                                  'Manyetik Kuvvet', r'F = q v B \sin(\theta)'),
                              // Diğer manyetizma formülleri burada eklenebilir
                            ]);
                          });
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Elektrik Akımı ve Devreler',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.addAll([
                              _buildFormulaCard('Ohm Yasası', r'V = I \cdot R'),
                              _buildFormulaCard('Dirençlerin Seri Bağlanması',
                                  r'R_{toplam} = R_1 + R_2 + \cdots + R_n'),
                              _buildFormulaCard(
                                  'Dirençlerin Paralel Bağlanması',
                                  r'\frac{1}{R_{toplam}} = \frac{1}{R_1} + \frac{1}{R_2} + \cdots + \frac{1}{R_n}'),
                              _buildFormulaCard('Kirchhoff\'un Gerilim Yasası',
                                  r'\sum V = 0'),
                              _buildFormulaCard('Kirchhoff\'un Akım Yasası',
                                  r'\sum I_{giren} = \sum I_{çıkan}'),
                            ]);
                          });
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Serbest Düşme',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.addAll([
                              _buildFormulaCard('Serbest Düşme Denklemi',
                                  r'y = y_0 + v_0 t - \frac{1}{2} g t^2'),
                              _buildFormulaCard('Son Hız', r'v = v_0 - g t'),
                              _buildFormulaCard(
                                  'Yerdeki Hız', r'v^2 = v_0^2 - 2 g y'),
                            ]);
                          });
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Vektörler',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.addAll([
                              _buildFormulaCard('Vektör Bileşenleri',
                                  r'\vec{A} = A_x \hat{i} + A_y \hat{j}'),
                              _buildFormulaCard('Vektör Uzunluğu',
                                  r'|\vec{A}| = \sqrt{A_x^2 + A_y^2}'),
                              _buildFormulaCard('İç Çarpım',
                                  r'\vec{A} \cdot \vec{B} = A_x B_x + A_y B_y'),
                            ]);
                          });
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Elektromanyetik',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.addAll([
                              _buildFormulaCard('Maxwell Denklemleri',
                                  r'\nabla \cdot \mathbf{E} = \frac{\rho}{\epsilon_0}'),
                              _buildFormulaCard(
                                  'Elektromanyetik Dalga Denklemi',
                                  r'\nabla^2 \mathbf{E} - \frac{1}{c^2} \frac{\partial^2 \mathbf{E}}{\partial t^2} = 0'),
                              // Diğer elektromanyetik formülleri burada eklenebilir
                            ]);
                          });
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Elektrostatik',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          setState(() {
                            _items = [];
                            _items.addAll([
                              _buildFormulaCard('Coulomb\'un Yasası',
                                  r'F = k_e \frac{q_1 q_2}{r^2}'),
                              _buildFormulaCard('Elektrik Alanı',
                                  r'E = \frac{F}{q} = k_e \frac{q}{r^2}'),
                              _buildFormulaCard('Elektrik Potansiyeli',
                                  r'V = k_e \frac{q}{r}'),
                            ]);
                          });
                        },
                      ),
                    ]),
              ],
            )),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
                  Navigator.popAndPushNamed(context, '/fonksiyonel');
                },
                icon: Image.asset('assets/images/mathematics.png'),
                tooltip: 'Fonksiyonel Hesap Makinesi',
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _scaffoldKey.currentState?.openDrawer();
                  });
                },
                icon: Image.asset('assets/images/formula.png'),
                tooltip: 'Formüller',
              ),
            ]),
          ),
        ),
        body: Container(
          //color: Colors.black,
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: _items,
          ),
        ));
  }
}
