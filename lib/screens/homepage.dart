import 'package:flutter/material.dart';
import 'package:qrcode_generator_final_2022/screens/qr_generator.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Color(0xff7342e4)),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.10,
                  left: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.03,
                ),
                child: Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.08,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.653,
                  child: ListView(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .05),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => GenerateQRPage(),
                                          ),
                                        )
                                      },
                                      icon: Image.asset(
                                        'assets/images/text.png',
                                      ),
                                      iconSize:
                                          MediaQuery.of(context).size.height *
                                              0.10,
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => GenerateQRPage(),
                                          ),
                                        )
                                      },
                                      icon: Image.asset(
                                          'assets/images/gmail.png'),
                                      iconSize:
                                          MediaQuery.of(context).size.height *
                                              0.10,
                                      // iconSize: 100,
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => GenerateQRPage(),
                                          ),
                                        )
                                      },
                                      icon: Image.asset(
                                          'assets/images/website.png'),
                                      iconSize:
                                          MediaQuery.of(context).size.height *
                                              0.10,

                                      // iconSize: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CurvedNavigationBar(
                color: Color(0xff7342e4),
                backgroundColor: Colors.white,
                buttonBackgroundColor: Color(0xff7342e4),
                items: [
                  Icon(
                    Icons.qr_code,
                    size: MediaQuery.of(context).size.height * 0.035,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.qr_code_scanner,
                    size: MediaQuery.of(context).size.height * 0.035,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.history,
                    size: MediaQuery.of(context).size.height * 0.035,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.settings,
                    size: MediaQuery.of(context).size.height * 0.035,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
