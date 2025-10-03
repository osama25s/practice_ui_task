import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_ui_task/features/details/presentation/widget/action_button.dart';
import 'package:practice_ui_task/features/details/presentation/widget/details_content.dart';
import 'package:practice_ui_task/features/details/presentation/widget/hero_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/dark_background.png",
              fit: BoxFit.cover,
            ),
          ),

          Scaffold(
            backgroundColor: Colors.transparent,
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: HeroImage()),

                SliverToBoxAdapter(child: SizedBox(height: 50.h)),
                SliverToBoxAdapter(child: const DetailsContent()),
              ],
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: ActionButtons()),
        ],
      ),
    );
  }
}
