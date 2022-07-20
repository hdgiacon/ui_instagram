import 'package:flutter/material.dart';
import 'package:ui_instagram/reels/one_reel.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  final _pageViewController = PageController();

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageViewController,
      scrollDirection: Axis.vertical,
      children: const [
        OneReel(
          profileName: 'simpsons.oficial',
          profilePhoto:
              'https://cdn.mensagenscomamor.com/content/images/m000532523.jpg?v=1',
          gifLocation:
              "https://media3.giphy.com/media/3ov9jQX2Ow4bM5xxuM/giphy.gif?cid=ecf05e47kwi2b64z268y6069uoz7i771i6jpvsuhmt47odzl&rid=giphy.gif&ct=g",
        ),
        OneReel(
          profileName: 'smart_programming_',
          profilePhoto:
              'https://cdn.mensagenscomamor.com/content/images/m000532523.jpg?v=1',
          gifLocation:
              "https://media.giphy.com/media/5GJskjLsUpmPN249Ez/giphy.gif",
        ),
        OneReel(
          profileName: '@best_houses',
          profilePhoto:
              'https://cdn.mensagenscomamor.com/content/images/m000532523.jpg?v=1',
          gifLocation:
              "https://media.giphy.com/media/m342OJ3RH80eNKHGOV/giphy.gif",
        ),
        OneReel(
          profileName: 'jeff.98.oficial',
          profilePhoto:
              'https://cdn.mensagenscomamor.com/content/images/m000532523.jpg?v=1',
          gifLocation:
              "https://media.giphy.com/media/26uf2dYBreLiLiK5O/giphy.gif",
        ),
      ],
    );
  }
}
