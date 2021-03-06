import 'package:flutter/material.dart';

class LiveStory extends StatelessWidget {
  final String storyLabel;
  final String foto;

  const LiveStory({
    super.key,
    required this.storyLabel,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                padding: const EdgeInsets.all(3.0),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color(0xff1f005c),
                      Color(0xff5b0060),
                      Color(0xff870160),
                      Color(0xffac255e),
                      //Color(0xffca485c),
                      //Color(0xffe16b5c),
                      //Color(0xfff39060),
                      //Color(0xffffb56b),
                    ],
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
                      image: DecorationImage(image: NetworkImage(foto)),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Container(
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
              )
            ],
          ),
          onTap: () {},
        ),
        const SizedBox(height: 5.0),
        Text(
          storyLabel,
          style: const TextStyle(fontSize: 10.0, color: Colors.white),
        )
      ],
    );
  }
}
