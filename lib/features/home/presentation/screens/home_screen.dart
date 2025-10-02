import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_ui_task/features/home/data/model/anime_data.dart';
import 'package:practice_ui_task/features/home/data/model/character_data.dart';
import 'package:practice_ui_task/features/home/presentation/widget/anime_movies_list.dart';
import 'package:practice_ui_task/features/home/presentation/widget/category_taps.dart';
import 'package:practice_ui_task/features/home/presentation/widget/header_widget.dart';
import 'package:practice_ui_task/features/home/presentation/widget/top_characters.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<AnimeData> animeList = [
    AnimeData(
      title: 'Detective Conan',
      genre: 'Mystery',
      rating: '5.0',
      imageUrl: 'assets/images/anime_1.png',
    ),
    AnimeData(
      title: 'Hunter x Hunter',
      genre: 'Adventure',
      rating: '5.0',
      imageUrl: 'assets/images/anime_2.png',
    ),
    AnimeData(
      title: 'Attack on Titan',
      genre: 'Action',
      rating: '4.9',
      imageUrl: 'assets/images/anime_3.png',
    ),
  ];

  final List<CharacterData> characters = [
    CharacterData(
      name: 'Gon Freecss',
      anime: 'Hunter x Hunter',
      imageUrl: 'assets/images/Ellipse_1.png',
    ),
    CharacterData(
      name: 'Naruto Uzumaki',
      anime: 'Naruto',
      imageUrl: 'assets/images/Ellipse_2.png',
    ),
    CharacterData(
      name: 'Luffy',
      anime: 'One Piece',
      imageUrl: 'assets/images/Ellipse_3.png',
    ),
    CharacterData(
      name: 'Sasuke',
      anime: 'Naruto',
      imageUrl: 'assets/images/Ellipse_1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/light_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              SizedBox(height: 20.h),
              CategoryTabs(),
              SizedBox(height: 20.h),
              FeaturedAnime(animeList: animeList),
              SizedBox(height: 30.h),
              TopCharacters(characters: characters),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
