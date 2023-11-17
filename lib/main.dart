import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void dinhdanh() {}

  void giothieubanbe() {}

  void profile() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: const Color.fromARGB(255, 20, 94, 154),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(
                                        const CircleBorder(),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green), // Màu nền của nút
                                    ),
                                    onPressed: profile,
                                    child: const Text("NQ",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Trungnguyen",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Text(
                                        "0đ | &0",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Giới thiệu bạn bè \n nhận ngay 1.000.000đ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(height: 20),
                                  TextButton(
                                    onPressed: giothieubanbe,
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                    ),
                                    child: const Text(
                                      "Giới thiệu ngay",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            TextButton(
                              onPressed: dinhdanh,
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.amber),
                              ),
                              child: const Text(
                                "Chưa định danh",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Image.asset(
                              '../lib/accsets/image25.png',
                              width: 140,
                              height: 140,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    width: double.infinity,
                    height: 350,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 450,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        // spreadRadius: 0,
                                        // blurRadius: 0,
                                        offset: const Offset(0, 0)),
                                    const BoxShadow(
                                        color: Colors.white,
                                        // spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 0))
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          '../lib/accsets/barcode-qr1.png',
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.cover,
                                        ),
                                        const Text('Thanh toán'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          '../lib/accsets/naptien.png',
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.contain,
                                        ),
                                        const Text('Nạp tiền'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          '../lib/accsets/chuyentien.png',
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.contain,
                                        ),
                                        const Text('Chuyển tiền'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          '../lib/accsets/shopping-bag.png',
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.cover,
                                        ),
                                        const Text('Túi đồ'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                      Positioned(
                        top: 100,
                        left: 20,
                        child: Container(
                          width: 450,
                          height: 80,
                          color: Colors.amber,
                        ),
                      )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
