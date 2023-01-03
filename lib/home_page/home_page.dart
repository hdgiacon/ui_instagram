import 'package:flutter/material.dart';
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
        body: TabBarView(
          controller: _tabController,
          children: const [
            Feed(),
            Search(),
            Reels(),
            Shop(),
            Profile(
              profileImage:
                  'https://quartoframe.com.br/wp-content/uploads/2021/04/minato-namikaze.jpg',
            ),
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
              _tabController.animateTo(_actualTab);
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
                  'https://quartoframe.com.br/wp-content/uploads/2021/04/minato-namikaze.jpg',
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
        return profileAppbar;
      default:
        return feedAppbar;
    }
  }
}
