import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_ui_task/features/home/presentation/widget/category_tap_item.dart';

class CategoryTabs extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Popular",
    "Trending",
    "New Releases",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: List.generate(categories.length, (index) {
          return CategoryTab(label: categories[index], isSelected: index == 0);
        }),
      ),
    );
  }
}
