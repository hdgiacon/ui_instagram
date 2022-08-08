import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String foto;
  final double size;
  final bool isLive;
  final double borderSize;

  const Story({
    super.key,
    required this.foto,
    required this.size,
    required this.isLive,
    required this.borderSize,
  });

  @override
  Widget build(BuildContext context) {
    const storyBorderColor = <Color>[
      Color(0xff1f005c),
      Color(0xff5b0060),
      Color(0xff870160),
      Color(0xffac255e),
      Color(0xffca485c),
      Color(0xffe16b5c),
      Color(0xfff39060),
      Color(0xffffb56b),
    ];

    const liveStoryBorderColor = <Color>[
      Color(0xff1f005c),
      Color(0xff5b0060),
      Color(0xff870160),
      Color(0xffac255e),
      //Color(0xffca485c),
      //Color(0xffe16b5c),
      //Color(0xfff39060),
      //Color(0xffffb56b),
    ];

    return Column(
      children: <Widget>[
        InkWell(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: size,
                height: size,
                padding: EdgeInsets.all(borderSize),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: const Alignment(0.8, 1),
                    colors: isLive ? liveStoryBorderColor : storyBorderColor,
                    tileMode: TileMode.mirror,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: const EdgeInsets.all(2.5),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(foto),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isLive,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.pink[800],
                      borderRadius: BorderRadius.circular(5.0)),
                  child: const Text(
                    'AO VIVO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              )
            ],
          ),
          onTap: () {},
        ),
        const SizedBox(height: 5.0),
      ],
    );
  }
}

class StoryWithLabel extends StatelessWidget {
  final String foto;
  final String storyLabel;
  final bool isLive;

  const StoryWithLabel({
    super.key,
    required this.foto,
    required this.storyLabel,
    required this.isLive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Story(
          foto: foto,
          size: 70.0,
          isLive: isLive,
          borderSize: 3.0,
        ),
        Text(
          storyLabel,
          style: const TextStyle(fontSize: 10.0, color: Colors.white),
        )
      ],
    );
  }
}
