import 'package:flutter/material.dart';
import 'package:practice_ui_task/features/details/presentation/widget/custom_appbar.dart';
import 'package:practice_ui_task/features/details/presentation/widget/details_content.dart';
import 'package:practice_ui_task/features/details/presentation/widget/hero_image.dart';
import 'package:practice_ui_task/main.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/dark_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [HeroImage(), DetailsContent()],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
