import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class mainImage extends StatelessWidget {
  const mainImage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/Rocket Boy 1.png',
        width: 190.w,
        height: 190.w,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Icon(
            Icons.workspace_premium,
            size: 60.sp,
            color: Colors.purple.shade700,
          );
        },
      ),
    );
  }
}
