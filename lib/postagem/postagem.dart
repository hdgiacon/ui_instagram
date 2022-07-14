import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_instagram/insta_icons/insta_icons.dart';

class Postagem extends StatelessWidget {
  final String fotoPerfil;
  final String nome;
  final String imagemPostagem;
  final String curtidoPor;
  final String descricao;
  final int numComentarios;
  final int tempoDesdePostagem;

  const Postagem({
    super.key,
    required this.fotoPerfil,
    required this.nome,
    required this.imagemPostagem,
    required this.curtidoPor,
    required this.descricao,
    required this.numComentarios,
    required this.tempoDesdePostagem,
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
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
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
              )
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
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.white,
              ),
              children: [
                const TextSpan(
                  text: 'Curtido por ',
                ),
                TextSpan(
                  text: curtidoPor,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: ' e ',
                ),
                const TextSpan(
                  text: 'outras pessoas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: '$nome ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: descricao,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Text(
              'Ver todos os $numComentarios comentários',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Há $tempoDesdePostagem horas',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                  ),
                ),
                const TextSpan(
                  text: ' . Ver tradução',
                  style: TextStyle(
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
