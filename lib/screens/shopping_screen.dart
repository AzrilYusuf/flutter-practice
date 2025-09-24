import 'package:flutter/material.dart';

class Praktikum2 extends StatefulWidget {
  const Praktikum2({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Praktikum2> createState() => _Praktikum2State();
}

class _Praktikum2State extends State<Praktikum2> {
  TextEditingController productCodeController = TextEditingController();
  TextEditingController totalProductController = TextEditingController();
  TextEditingController purchasingMethodController = TextEditingController();

  String productName = "";
  double price = 0, totalPrice = 0, discount = 0, totalPayment = 0;

  List<String> loopingResult = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Praktikum 2")),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blueAccent,
                child: ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: [
                    TextField(
                      controller: productCodeController,
                      decoration: const InputDecoration(
                        label: Text("Kode Barang"),
                      ),
                    ),
                    TextField(
                      controller: totalProductController,
                      decoration: const InputDecoration(
                        label: Text("Jumlah Barang"),
                      ),
                    ),
                    TextField(
                      controller: purchasingMethodController,
                      decoration: const InputDecoration(
                        label: Text("Metode Pembayaran (T/C)"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                String productCode = productCodeController.text;
                                double totalProduct = double.parse(
                                  totalProductController.text,
                                );
                                String purchasingMethod =
                                    purchasingMethodController.text;

                                switch (productCode.toUpperCase()) {
                                  case "SPT":
                                    productName = "Sepatu";
                                    price = 200000;
                                    break;
                                  case "SDL":
                                    productName = "Sandal";
                                    price = 50000;
                                    break;
                                  case "TST":
                                    productName = "T-shirt";
                                    price = 100000;
                                    break;
                                  case "TOP":
                                    productName = "Topi";
                                    price = 70000;
                                    break;
                                  default:
                                    productName = "";
                                    price = 0;
                                    break;
                                }

                                totalPrice = totalProduct * price;

                                if (purchasingMethod.toUpperCase() == "T") {
                                  discount =
                                      0.10 *
                                      totalPrice; // 10% discount for debit card
                                } else {
                                  discount = 0; // no discount for cash
                                }

                                totalPayment = totalPrice - discount;
                                setState(() {});
                              },
                              child: const Text("Proses"),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  productCodeController.clear();
                                  totalProductController.clear();
                                  purchasingMethodController.clear();
                                  productName = "";
                                  price = 0;
                                  totalPrice = 0;
                                  discount = 0;
                                  totalPayment = 0;
                                });
                              },
                              child: const Text("Kosongkan"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text("Nama barang: $productName"),
                    Text("Harga satuan: Rp $price"),
                    Text("Total harga: Rp $totalPrice"),
                    Text("Total diskon: Rp $discount"),
                    Text("Total pembayaran: Rp $totalPayment"),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: const Color.fromARGB(255, 135, 43, 255),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          loopingResult.clear();
                          for (int i = 0; i < 10; i++) {
                            loopingResult.add(i.toString());
                          }
                          setState(() {});
                        },
                        child: const Text("Looping dengan for"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          loopingResult.clear();
                          int i = 1;
                          while (i < 100) {
                            loopingResult.add(i.toString());
                            i += 5;
                          }
                          setState(() {});
                        },
                        child: const Text("Looping dengan while"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          loopingResult.clear();

                          List<String> colors = [
                            "Merah",
                            "Kuning",
                            "Hijau",
                            "Biru",
                            "Ungu",
                            "Jingga",
                            "Abu-abu",
                          ];

                          for (var element in colors) {
                            loopingResult.add(
                              (element.toString().toLowerCase().contains("a"))
                                  ? element
                                  : "-",
                            );
                          }
                          setState(() {});
                        },
                        child: const Text("Looping dengan for-in"),
                      ),
                      Text("Hasil Looping: $loopingResult"),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => const ProfileScreen()),
                      //     );
                      //   },
                      //   child: const Text("Profile"),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

