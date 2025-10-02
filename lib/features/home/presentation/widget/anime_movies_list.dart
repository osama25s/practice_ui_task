import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_ui_task/features/home/data/model/anime_data.dart';
import 'package:practice_ui_task/features/home/presentation/screens/home_screen.dart';
import 'package:practice_ui_task/features/home/presentation/widget/anime_card.dart';
import 'package:practice_ui_task/main.dart';

class FeaturedAnime extends StatelessWidget {
  final List<AnimeData> animeList;

  const FeaturedAnime({super.key, required this.animeList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          return AnimeCard(anime: animeList[index]);
        },
      ),
    );
  }
}
