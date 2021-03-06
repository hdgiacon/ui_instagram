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
              InkWell(
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  padding: const EdgeInsets.all(2.0),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Color(0xff1f005c),
                        Color(0xff5b0060),
                        Color(0xff870160),
                        Color(0xffac255e),
                        Color(0xffca485c),
                        Color(0xffe16b5c),
                        Color(0xfff39060),
                        Color(0xffffb56b),
                      ],
                      tileMode: TileMode.mirror,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(1.5),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(fotoPerfil),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                onTap: () {},
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
                      child: Text('Bot??o $index'),
                    );
                  });
                },
              )
            ],
          ),
        ),
        const SizedBox(height: 5.0),
        SizedBox(
          // usar interactive viewer
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
              'Ver todos os $numComentarios coment??rios',
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
                  text: 'H?? $tempoDesdePostagem horas',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                  ),
                ),
                const TextSpan(
                  text: ' . Ver tradu????o',
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
