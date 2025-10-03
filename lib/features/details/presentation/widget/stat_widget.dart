import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const StatWidget({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18.sp, color: Colors.white70),
        SizedBox(width: 4.w),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 14.sp)),
      ],
    );
  }
}
