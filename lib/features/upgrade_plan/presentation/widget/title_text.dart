import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText extends StatelessWidget {
  const TitleText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Seamless Anime\nExperience, Ad-Free.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}

class SubtitleText extends StatelessWidget {
  const SubtitleText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Unlimited anime streaming without\ninterruptions.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.sp, color: Colors.black54),
    );
  }
}
