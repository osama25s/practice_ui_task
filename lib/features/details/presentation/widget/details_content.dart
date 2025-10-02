import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_ui_task/features/details/presentation/widget/action_button.dart';
import 'package:practice_ui_task/features/details/presentation/widget/description_text.dart';
import 'package:practice_ui_task/features/details/presentation/widget/gener_tag.dart';
import 'package:practice_ui_task/features/details/presentation/widget/stat_widget.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(
            spacing: 8.w,
            children: const [
              GenreTag(label: 'Dark Fantasy'),
              GenreTag(label: 'Action'),
              GenreTag(label: 'Adventure'),
            ],
          ),
          SizedBox(height: 26.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              StatWidget(icon: Icons.remove_red_eye, label: '2.3M views'),
              SizedBox(width: 20),
              StatWidget(icon: Icons.thumb_up_outlined, label: '2K clap'),
              SizedBox(width: 20),
              StatWidget(
                icon: Icons.video_library_outlined,
                label: '4 Seasons',
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Description_Text(),
          SizedBox(height: 16.h),
          ActionButtons(),
        ],
      ),
    );
  }
}
