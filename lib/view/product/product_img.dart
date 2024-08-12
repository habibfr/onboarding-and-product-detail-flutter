import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductImg extends StatefulWidget {
  final List<String> imgList;

  const ProductImg({
    Key? key,
    required this.imgList,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductImgState();
}

class _ProductImgState extends State<ProductImg> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: screenHeight * 0.5,
              child: CarouselSlider(
                items: widget.imgList
                    .map((item) => SizedBox(
                          width: double.infinity,
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/images/img_product.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ))
                    .toList(),
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  aspectRatio: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 40.0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.jumpToPage(entry.key),
                child: Container(
                  width: _current == entry.key ? 12.0 : 12.0,
                  height: _current == entry.key ? 12.0 : 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (_current == entry.key ? Colors.white : Colors.grey)
                        .withOpacity(0.9),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
