import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:practice_ui_task/features/home/presentation/widget/navbar_widget.dart';

void main() {
  runApp(const AnimeStreamingApp());
}

class AnimeStreamingApp extends StatelessWidget {
  const AnimeStreamingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Anime Streaming',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: const Color(0xFF6C5CE7),
            scaffoldBackgroundColor: const Color(0xFF1A1A1A),
            fontFamily: 'SF Pro',
          ),
          home: const MainScreen(),
        );
      },
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 24.sp, color: Colors.black),
      ),
    );
  }
}
