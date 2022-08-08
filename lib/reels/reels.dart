import 'package:flutter/material.dart';
import 'package:ui_instagram/reels/one_reel.dart';
import 'package:ui_instagram/reels/reels_appbar.dart';

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
    return Scaffold(
      appBar: reelsAppBar,
      backgroundColor: Colors.black,
      body: PageView(
        controller: _pageViewController,
        scrollDirection: Axis.vertical,
        children: const [
          OneReel(
            profileName: '@simpsons.oficial',
            profilePhoto:
                'https://i.pinimg.com/originals/bd/19/2f/bd192f2723f7d81013f04903d9e0428b.png',
            gifLocation:
                "https://media3.giphy.com/media/3ov9jQX2Ow4bM5xxuM/giphy.gif?cid=ecf05e47kwi2b64z268y6069uoz7i771i6jpvsuhmt47odzl&rid=giphy.gif&ct=g",
          ),
          OneReel(
            profileName: 'smart_programming_',
            profilePhoto:
                'https://www.empreendedor.com/wp-content/uploads/2022/03/radowan-nakif-rehan-bootcamps-programacao-unsplash.jpg',
            gifLocation:
                "https://media.giphy.com/media/5GJskjLsUpmPN249Ez/giphy.gif",
          ),
          OneReel(
            profileName: '@best_houses',
            profilePhoto:
                'https://i.pinimg.com/736x/cb/46/0d/cb460d76a5084d8739a9fbd5e0daae46.jpg',
            gifLocation:
                "https://media.giphy.com/media/m342OJ3RH80eNKHGOV/giphy.gif",
          ),
          OneReel(
            profileName: 'jeff.98.oficial',
            profilePhoto:
                'https://i.pinimg.com/originals/31/06/71/310671a46e934dacd8d12ddc3ec97980.jpg',
            gifLocation:
                "https://media.giphy.com/media/26uf2dYBreLiLiK5O/giphy.gif",
          ),
        ],
      ),
    );
  }
}
