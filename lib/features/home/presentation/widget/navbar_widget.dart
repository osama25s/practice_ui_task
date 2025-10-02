import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:practice_ui_task/features/home/presentation/screens/home_screen.dart';
import 'package:practice_ui_task/main.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    const PlaceholderScreen(title: 'Library'),
    const PlaceholderScreen(title: 'Search'),
    const PlaceholderScreen(title: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: _buildBottomNav(),
      backgroundColor: const Color(0xFFF9F8FD),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      decoration: BoxDecoration(color: const Color(0xFFF9F8FD)),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
          child: GNav(
            gap: 8.w,
            activeColor: Colors.white,
            iconSize: 24.sp,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: const Color(0xFF6C5CE7),
            color: Colors.grey,
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.video_library_outlined, text: 'Library'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.person_outline, text: 'Profile'),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
