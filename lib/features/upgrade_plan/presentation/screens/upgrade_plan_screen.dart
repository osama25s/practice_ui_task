import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_ui_task/features/upgrade_plan/presentation/widget/circle_image.dart';
import 'package:practice_ui_task/features/upgrade_plan/presentation/widget/continue_button.dart';
import 'package:practice_ui_task/features/upgrade_plan/presentation/widget/header.dart';
import 'package:practice_ui_task/features/upgrade_plan/presentation/widget/plan_card.dart';
import 'package:practice_ui_task/features/upgrade_plan/presentation/widget/title_text.dart';
import 'package:practice_ui_task/main.dart';

class UpgradePlanSheet extends StatefulWidget {
  const UpgradePlanSheet({super.key});

  @override
  State<UpgradePlanSheet> createState() => _UpgradePlanSheetState();
}

class _UpgradePlanSheetState extends State<UpgradePlanSheet> {
  bool isMonthly = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
        ),
        child: Stack(
          children: [
            /// Background Image
            Positioned.fill(
              child: Image.asset(
                "assets/images/light_background.png", // your asset path
                fit: BoxFit.cover,
              ),
            ),

            /// Foreground content
            Column(
              children: [
                const Header(),
                const CircleImage(),
                SizedBox(height: 20.h),
                const TitleText(),
                SizedBox(height: 8.h),
                const SubtitleText(),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      PlanCard(
                        title: "Monthly",
                        price: "\$5 USD",
                        period: "/Month",
                        isSelected: isMonthly,
                        onTap: () => setState(() => isMonthly = true),
                      ),
                      SizedBox(height: 12.h),
                      PlanCard(
                        title: "Annually",
                        price: "\$50 USD",
                        period: "/Year",
                        isSelected: !isMonthly,
                        onTap: () => setState(() => isMonthly = false),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
                const ContinueButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
