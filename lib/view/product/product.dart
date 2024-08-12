import 'package:aksamedia_test_mobile/view/product/product_img.dart';
import 'package:aksamedia_test_mobile/view/product/product_description.dart';
import 'package:aksamedia_test_mobile/view/product/product_grid.dart';
import 'package:aksamedia_test_mobile/view/product/product_ukuran_warna.dart';
import 'package:flutter/material.dart';

class MyProduct extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF053149);

  const MyProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = ["", "", ""];

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              ProductImg(
                imgList: imgList,
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.file_download),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5, // Atur tinggi awal
            minChildSize: 0.5, // Ukuran minimal saat digeser
            maxChildSize: 0.8, // Ukuran maksimal saat digeser
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 14),
                    Expanded(
                      child: SingleChildScrollView(
                        controller:
                            scrollController, // Berikan controller ke SingleChildScrollView
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(
                                      6.0), // Padding di sekitar teks
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFFECE806), // Warna latar belakang
                                    borderRadius: BorderRadius.circular(
                                        6.0), // Radius border
                                  ),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "NEW ",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight:
                                                FontWeight.bold, // Gaya tebal
                                            color: Color(0xFF053149),
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Product Baru",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight
                                                .normal, // Gaya reguler
                                            color: Color(0xFF053149),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () => {},
                                  icon: const Icon(Icons.share),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment
                                  .centerLeft, // Mengatur alignment container ke kiri
                              // Menambahkan padding di sekitar teks
                              child: Column(
                                children: const [
                                  Text(
                                    "Beauty Set by Irvie",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign
                                        .start, // Perataan teks di dalam container
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Irvie group official",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign
                                    .start, // Perataan teks di dalam container
                              ),
                            ),
                            const SizedBox(height: 14),
                            Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .center, // Memastikan Row terpusat
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Rp178.000",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Harga Customer",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                      width:
                                          16), // Jarak antara kolom dan garis pemisah
                                  Container(
                                    width: 1, // Lebar garis pemisah
                                    height:
                                        40, // Tinggi garis pemisah, sesuaikan dengan kebutuhan
                                    color: Colors.black, // Warna garis pemisah
                                  ),
                                  const SizedBox(
                                      width:
                                          16), // Jarak antara garis pemisah dan kolom kedua
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Rp148.000",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Harga Reseller",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(
                                  8.0), // Padding di sekitar teks
                              decoration: const BoxDecoration(
                                color:
                                    Color(0xFFECE806), // Warna latar belakang
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                ), // Radius border
                              ),
                              child: RichText(
                                textAlign: TextAlign.left,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Komisi ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight:
                                            FontWeight.normal, // Gaya reguler
                                        color: Color(0xFF053149),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Rp35.600 ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight:
                                            FontWeight.bold, // Gaya tebal
                                        color: Color(0xFF053149),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "(20%)",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight:
                                            FontWeight.normal, // Gaya reguler
                                        color: Color(0xFF053149),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: const ProductUkuranWarna()),
                            const SizedBox(
                              height: 8.0,
                            ),
                            const Divider(thickness: 1, color: Colors.grey),
                            const ProductDescription(),
                            // ProductCard(),
                            const ProductGrid(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent, // Make the background transparent
          ),
          margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
          height: 70,
          child: Row(
            children: [
              Expanded(
                flex: 7, // 70% width
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 4),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black),
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Tambahkan ke toko',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3, // 30% width
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 4),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
