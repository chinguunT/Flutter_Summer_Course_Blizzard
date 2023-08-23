import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icodegram_app/screens/home_screen.dart';
import '../screens/add_post.dart';
import '../screens/my_profile.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;

  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: [
            const HomeScreen(),
            const AddPostScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _page == 0 ? Colors.deepOrange : Colors.white,),
            label: '',
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined, color: _page == 1 ? Colors.deepOrange : Colors.white,),
              label: '',
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined, color: _page == 2 ? Colors.deepOrange : Colors.white,),
              label: '',
              backgroundColor: Colors.white
          ),
        ],
        onTap: navigationTapped,
        backgroundColor: Colors.black,
      ),
    );
  }

  navigationTapped(int page){
    pageController.jumpToPage(page);
  }

  onPageChanged(int page){
    setState(() {
      _page = page;
    });
  }
}