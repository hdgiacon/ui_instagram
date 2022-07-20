import 'package:flutter/material.dart';
import 'package:ui_instagram/feed/app_bar_feed.dart';
import 'package:ui_instagram/feed/feed.dart';
import 'package:ui_instagram/profile/profile.dart';
import 'package:ui_instagram/reels/reels.dart';
import 'package:ui_instagram/reels/reels_appbar.dart';
import 'package:ui_instagram/search/search.dart';
import 'package:ui_instagram/search/search_appbar.dart';
import 'package:ui_instagram/shop/shop.dart';
import 'package:ui_instagram/shop/shop_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var _actualTab = 0;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 5);

    _tabController.addListener(() {
      setState(() {
        _actualTab = _tabController.index;
      });
    });

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
        appBar: currentAppBar(_actualTab),
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
            setState(() {
              _actualTab = index;
              _tabController.animateTo(index);
            });
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

  AppBar? currentAppBar(int index) {
    switch (index) {
      case 0:
        return feedAppbar;
      case 1:
        return searchAppbar;
      case 2:
        return reelsAppBar;
      case 3:
        return shopAppbar;
      case 4:
        return null;
      default:
        return feedAppbar;
    }
  }
}
