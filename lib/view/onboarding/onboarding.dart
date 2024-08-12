import 'package:aksamedia_test_mobile/view/onboarding/onboarding_bottom_sheet.dart';
import 'package:aksamedia_test_mobile/view/product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class MyOnboarding extends StatefulWidget {
  const MyOnboarding({super.key});

  @override
  State<MyOnboarding> createState() => _MyOnboardingState();
}

class _MyOnboardingState extends State<MyOnboarding> {
  final Color kDarkBlueColor = const Color(0xFF242626);

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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/img_onboarding_1.png',
                fit: BoxFit.cover),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/img_onboarding_2.png',
                fit: BoxFit.cover),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/img_onboarding_3.png',
                fit: BoxFit.cover),
          ),
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
                  onButtonPressed: () {},
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
                  onButtonPressed: () {},
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
                  onButtonPressed: () {},
                ),
              ),
            ],
          ),
        ]);
  }
}
