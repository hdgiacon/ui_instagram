import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_instagram/icons/insta_icons.dart';

class Postagem extends StatelessWidget {
  final String fotoPerfil;
  final String nome;
  final String imagemPostagem;
  final String curtidoPor;
  final String descricao;
  final int numComentarios;

  const Postagem({
    super.key,
    required this.fotoPerfil,
    required this.nome,
    required this.imagemPostagem,
    required this.curtidoPor,
    required this.descricao,
    required this.numComentarios,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(fotoPerfil),
              ),
              const SizedBox(width: 10.0),
              Text(
                nome,
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              const Expanded(child: SizedBox()),
              const Text(
                '...',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5.0),
        SizedBox(
          height: MediaQuery.of(context).size.height * .45,
          child: Image(
            fit: BoxFit.fitHeight,
            image: NetworkImage(imagemPostagem),
          ),
        ),
        const SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 10.0),
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                iconSize: 20.0,
                icon: const Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                ),
              ),
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
              IconButton(
                onPressed: () {},
                iconSize: 20.0,
                icon: const Icon(
                  InstaIcons.direction,
                  color: Colors.white,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 20.0,
                icon: const Icon(
                  InstaIcons.saved,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: Text(
            'Curtido por $curtidoPor e outras pessoas',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: Text(
            '$nome $descricao',
            overflow: TextOverflow.clip,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 5.0),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: Text(
            'Ver todos os $numComentarios comentários',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        )
        // ver todos os ... comentarios
      ],
    );
  }
}
