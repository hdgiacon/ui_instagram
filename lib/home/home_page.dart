import 'package:flutter/material.dart';
import 'package:ui_instagram/feed/app_bar_feed.dart';
import 'package:ui_instagram/feed/feed.dart';
import 'package:ui_instagram/profile/profile.dart';
import 'package:ui_instagram/reels/reels.dart';
import 'package:ui_instagram/search/search.dart';
import 'package:ui_instagram/shop/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: currentAppBar(_tabController.index),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Feed(),
            Search(),
            Reels(),
            Shop(),
            Profile(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            _tabController.animateTo(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1190742144/mrbean-270x300_400x400.jpg',
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  AppBar currentAppBar(int index) {
    switch (index) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        return feedAppbar;
      default:
        return feedAppbar;
    }
  }
}
