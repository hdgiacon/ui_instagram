import 'package:flutter/material.dart';
import 'package:ui_instagram/postagem/postagem.dart';
import 'package:ui_instagram/story/live_story.dart';
import 'package:ui_instagram/story/my_story.dart';
import 'package:ui_instagram/story/story.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  var listStory = [
    const MyStory(
      foto:
          'https://pbs.twimg.com/profile_images/1190742144/mrbean-270x300_400x400.jpg',
    ),
    const Story(
      storyLabel: 'NetflixBrasil',
      foto:
          'https://play-lh.googleusercontent.com/TBRwjS_qfJCSj1m7zZB93FnpJM5fSpMA_wUlFDLxWAb45T9RmwBvQd5cWR5viJJOhkI',
    ),
    const LiveStory(
      storyLabel: 'marquinDJ',
      foto:
          'https://conteudo.imguol.com.br/c/entretenimento/8f/2018/06/15/meme-de-andre-marques-1529072545810_v2_300x300.png',
    ),
    const Story(
      storyLabel: 'fausto_oficial',
      foto:
          'https://cdn.mensagenscomamor.com/content/images/m000532523.jpg?v=1',
    ),
    const Story(
      storyLabel: 'silvio.santos',
      foto:
          'https://criativafm.com/wp-content/uploads/2021/07/silvio-santos-23072021133102595.jpeg',
    ),
    const Story(
      storyLabel: 'crunchyrow',
      foto: 'https://images-na.ssl-images-amazon.com/images/I/417bVUqe0pL.png',
    ),
    const Story(
      storyLabel: '@Jaja',
      foto: 'https://i1.sndcdn.com/avatars-000178307058-j65xvd-t500x500.jpg',
    ),
  ];

  var listPosts = <Postagem>[
    const Postagem(
      fotoPerfil:
          'https://play-lh.googleusercontent.com/TBRwjS_qfJCSj1m7zZB93FnpJM5fSpMA_wUlFDLxWAb45T9RmwBvQd5cWR5viJJOhkI',
      nome: 'NetflixBrasil',
      imagemPostagem:
          'https://sm.ign.com/ign_br/tv/s/stranger-t/stranger-things_y6du.jpg',
      curtidoPor: 'datena.oficial',
      descricao:
          '''A quarta temporada da série de terror de ficção científica estadunidense Stranger Things foi lançada no serviço de streaming Netflix em dois volumes. O primeiro volume de sete episódios foi lançado em 27 de maio de 2022, enquanto o segundo volume de dois episódios foi lançado em 1º de julho de 2022.''',
      numComentarios: 1860,
      tempoDesdePostagem: 19,
    ),
    const Postagem(
      fotoPerfil:
          'https://images-na.ssl-images-amazon.com/images/I/417bVUqe0pL.png',
      nome: 'crunchyroll',
      imagemPostagem:
          'https://m.media-amazon.com/images/M/MV5BNzc5MTczNDQtNDFjNi00ZDU5LWFkNzItOTE1NzQzMzdhNzMxXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_.jpg',
      curtidoPor: 'craqueNeto10',
      descricao:
          '''Shingeki no Kyojin também conhecido pelo título em inglês Attack on Titan, é uma série de mangá escrita e ilustrada por Hajime Isayama.''',
      numComentarios: 963,
      tempoDesdePostagem: 5,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 5.0),
          Container(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .13,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 10.0),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: listStory.length,
              itemBuilder: (context, index) {
                return listStory[index];
              },
            ),
          ),
          ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: listPosts.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return listPosts[index];
            },
          ),
        ],
      ),
    );
  }
}
