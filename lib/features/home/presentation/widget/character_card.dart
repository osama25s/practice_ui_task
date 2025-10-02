import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_ui_task/features/home/data/model/character_data.dart';

class CharacterCard extends StatelessWidget {
  final CharacterData character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      margin: EdgeInsets.only(right: 16.w),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              character.imageUrl,
              width: 70.w,
              height: 70.w,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return CircleAvatar(
                  radius: 35.r,
                  backgroundColor: Colors.grey.shade800,
                  child: Icon(
                    Icons.person,
                    size: 35.sp,
                    color: Colors.grey.shade600,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            character.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            character.anime,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
