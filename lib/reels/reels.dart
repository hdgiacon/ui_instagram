import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_instagram/insta_icons/insta_icons.dart';

class Reels extends StatelessWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // video
        Container(
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 10.0),
          child: Row(
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reels',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.deepOrange,
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
                    const SizedBox(height: 20.0),
                    Row(
                      children: const [
                        // texto em movimento
                        Expanded(
                          flex: 6,
                          child: SizedBox(),
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Expanded(
                          flex: 4,
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
              Expanded(
                flex: 1,
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
                        iconSize: 20.0,
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
                      iconSize: 20.0,
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
                        //image: ,
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Text(
            '@perfil',
            style: TextStyle(
              color: Colors.white.withAlpha(100),
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        )
      ],
    );
  }
}
