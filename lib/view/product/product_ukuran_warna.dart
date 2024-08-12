import 'package:flutter/material.dart';

class ProductUkuranWarna extends StatefulWidget {
  const ProductUkuranWarna({super.key});

  @override
  _ProductUkuranWarnaState createState() => _ProductUkuranWarnaState();
}

class _ProductUkuranWarnaState extends State<ProductUkuranWarna> {
  String? selectedPaket;
  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Ukuran",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                ChoiceChip(
                  side: selectedPaket == "Paket 1"
                      ? const BorderSide(width: 2)
                      : null,
                  label: const Text("Paket 1"),
                  selected: selectedPaket == "Paket 1",
                  onSelected: (selected) {
                    setState(() {
                      selectedPaket = selected ? "Paket 1" : null;
                    });
                  },
                ),
                ChoiceChip(
                  side: selectedPaket == "Paket 2"
                      ? const BorderSide(width: 2)
                      : null,
                  label: const Text("Paket 2"),
                  selected: selectedPaket == "Paket 2",
                  onSelected: (selected) {
                    setState(() {
                      selectedPaket = selected ? "Paket 2" : null;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              "Warna",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = const Color(0xFFDDB69A);
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFFDDB69A),
                      border: Border.all(
                        color: selectedColor == const Color(0xFFDDB69A)
                            ? Colors.black
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: selectedColor == const Color(0xFFDDB69A)
                        ? const Center(
                            child: Icon(Icons.check, color: Colors.white))
                        : null,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = const Color(0xFF5B3E36);
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF5B3E36),
                      border: Border.all(
                        color: selectedColor == const Color(0xFF5B3E36)
                            ? Colors.black
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: selectedColor == const Color(0xFF5B3E36)
                        ? const Center(
                            child: Icon(Icons.check, color: Colors.white))
                        : null,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: "Stok : ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF053149),
                ),
              ),
              TextSpan(
                text: "99+ Pcs ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF053149),
                ),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
