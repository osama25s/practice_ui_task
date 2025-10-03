import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.57,
          width: double.infinity,
          child: Image.asset(
            'assets/images/details_screen_2.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: -50.h,
          left: 0,
          right: 0,
          child: Center(
            child: Image.asset(
              'assets/images/detalis_screen.png',
              height: 135.h,
            ),
          ),
        ),
      ],
    );
  }
}
