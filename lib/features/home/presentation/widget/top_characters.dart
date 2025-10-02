import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_ui_task/features/home/data/model/character_data.dart';
import 'package:practice_ui_task/features/home/presentation/screens/home_screen.dart';
import 'package:practice_ui_task/features/home/presentation/widget/character_card.dart';
import 'package:practice_ui_task/main.dart';

class TopCharacters extends StatelessWidget {
  final List<CharacterData> characters;

  const TopCharacters({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Top Characters',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 18.h),
        SizedBox(
          height: 120.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemCount: characters.length,
            itemBuilder: (context, index) {
              return CharacterCard(character: characters[index]);
            },
          ),
        ),
      ],
    );
  }
}
