import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String period;
  final bool isSelected;
  final VoidCallback onTap;

  const PlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.period,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF18153F) : Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: isSelected ? const Color(0xFF18153F) : Colors.grey.shade300,
            width: 2.w,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/video_pic.png',
              height: 70.h,
              width: 70.w,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    '$price $period',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: isSelected ? Colors.white70 : Colors.black54,
                    ),
                  ),
                  Text(
                    'Include Family Sharing',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: isSelected ? Colors.white60 : Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: isSelected ? Colors.white : Colors.grey,
              size: 24.sp,
            ),
          ],
        ),
      ),
    );
  }
}
