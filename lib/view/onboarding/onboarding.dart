import 'package:aksamedia_test_mobile/view/onboarding/onboarding_bottom_sheet.dart';
import 'package:aksamedia_test_mobile/view/product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class MyOnboarding extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF242626);

  const MyOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
        hasFloatingButton: false,
        skipTextButton: Text(
          'Lewati',
          style: TextStyle(
            fontSize: 16,
            color: kDarkBlueColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Text(
          'Masuk',
          style: TextStyle(
            fontSize: 16,
            color: kDarkBlueColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailingFunction: () {
          // Your trailingFunction logic here
          // Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyProduct()),
          );
        },
        controllerColor: kDarkBlueColor,
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        pageBackgroundColor: Colors.white,
        background: [
          Image.asset('assets/images/img_onboarding_1.png'),
          Image.asset('assets/images/img_onboarding_2.png'),
          Image.asset('assets/images/img_onboarding_3.png'),
        ],
        speed: 1.8,
        pageBodies: [
          Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: OnboardingBottomSheet(
                  title: 'Gratis Materi Belajar \nMenjadi Seller Handal',
                  description:
                      'Nggak bisa jualan? \nJangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
                  buttonText: 'Selanjutnya',
                  onButtonPressed: () {
                    // Handle button press for the first page
                  },
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: OnboardingBottomSheet(
                  title: 'Ribuan Produk \ndengan Kualitas Terbaik',
                  description:
                      'Tokorame menyediakan ribuan produk dengan kualitas derbaik dari seller terpercaya',
                  buttonText: 'Selanjutnya',
                  onButtonPressed: () {
                    // Handle button press for the first page
                  },
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: OnboardingBottomSheet(
                  title: 'Toko Online Unik\nUntuk Kamu Jualan',
                  description:
                      'Subdomain unik dan toko online profesional siap pakai',
                  buttonText: 'Selanjutnya',
                  onButtonPressed: () {
                    // Handle button press for the first page
                  },
                ),
              ),
            ],
          ),
        ]);
  }
}
