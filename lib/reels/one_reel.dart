import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'package:ui_instagram/insta_icons/insta_icons.dart';

class OneReel extends StatelessWidget {
  final String gifLocation;

  const OneReel({
    super.key,
    required this.gifLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // video
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.network(
            gifLocation,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 50.0, 10.0, 10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reels',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://cdn.mensagenscomamor.com/content/images/m000532523.jpg?v=1',
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        const Text(
                          'nomePerfil',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            side: const BorderSide(
                              width: 2.0,
                              color: Colors.white,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Text(
                            'Seguir',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'texto com as hashtags no fim',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .52,
                          height: 20.0,
                          child: Marquee(
                            text: 'texto em movimento do reels',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        const Expanded(
                          child: Text(
                            'nome da localização',
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: const Icon(Icons.camera),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 28.0,
                      icon: const Icon(
                        FontAwesomeIcons.heart,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      '138 mil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Transform(
                      transform: Matrix4.rotationY(math.pi),
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {},
                        iconSize: 28.0,
                        icon: const Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      '306',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    IconButton(
                      onPressed: () {},
                      iconSize: 28.0,
                      icon: const Icon(
                        InstaIcons.direction,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    PopupMenuButton(
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      itemBuilder: (context) {
                        return List.generate(5, (index) {
                          return PopupMenuItem(
                            child: Text('Botão $index'),
                          );
                        });
                      },
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://cdn.mensagenscomamor.com/content/images/m000532523.jpg?v=1',
                          ),
                        ),
                        //color: Colors.white,
                        border: Border.all(width: 3.0, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
