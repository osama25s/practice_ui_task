import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.55,
          width: double.infinity,
          child: Image.asset(
            'assets/images/details_screen_2.png',
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          bottom: -30.h,
          left: 0,
          right: 0,
          child: Center(child: Image.asset('assets/images/detalis_screen.png')),
        ),
      ],
    );
  }
}
