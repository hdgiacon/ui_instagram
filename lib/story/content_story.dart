import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_instagram/insta_icons/insta_icons.dart';
import 'package:ui_instagram/story/story_progess_bar.dart';

class StoryPostagem extends StatelessWidget {
  final Color color;

  const StoryPostagem({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

class ContentStory extends StatefulWidget {
  final List<StoryPostagem> postagemList;

  const ContentStory({
    super.key,
    required this.postagemList,
  });

  @override
  State<ContentStory> createState() => _ContentStoryState();
}

class _ContentStoryState extends State<ContentStory> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    /*
    final storyProgressList = List.generate(
      widget.postagemList.length,
      (index) => LinearProgressIndicator(
        backgroundColor: Colors.grey.withOpacity(0.5),
        valueColor: const AlwaysStoppedAnimation<Color>(
          Colors.grey,
        ),
        value: 0.0,
      ),
    );
    */
    return Column(
      children: [
        Expanded(
          flex: 9,
          child: Stack(
            children: [
              widget.postagemList[index],
              Column(
                children: [
                  const SizedBox(height: 40.0),
                  SizedBox(
                    height: 3.0,
                    child: ListView.separated(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      itemBuilder: ((context, index) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width /
                                  widget.postagemList.length -
                              9,
                          child: const StoryProgressBar(),
                        );
                      }),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 5.0),
                      itemCount: widget.postagemList.length,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Material(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 18.0,
                          ),
                          const SizedBox(width: 10.0),
                          const Text(
                            "nome",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          const Text(
                            "1 h",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          const Spacer(),
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
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                index--;

                                if (index < 0) {
                                  index = 0;
                                }
                              });
                            },
                            onVerticalDragUpdate: (details) {
                              int sensitivity = 8;

                              if (details.delta.dy > sensitivity) {
                                Navigator.pop(context);
                              }
                            },
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: GestureDetector(
                            onTap: () {
                              // mutar
                            },
                            onLongPress: () {
                              // pausar
                            },
                            onVerticalDragUpdate: (details) {
                              int sensitivity = 8;

                              if (details.delta.dy > sensitivity) {
                                Navigator.pop(context);
                              }
                            },
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                index++;

                                if (index == widget.postagemList.length) {
                                  index = widget.postagemList.length - 1;

                                  Navigator.pop(context);
                                }
                              });
                            },
                            onVerticalDragUpdate: (details) {
                              int sensitivity = 8;

                              if (details.delta.dy > sensitivity) {
                                Navigator.pop(context);
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Material(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              color: Colors.black,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        label: const Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Enviar mensagem",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.0,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  IconButton(
                    onPressed: () {},
                    iconSize: 25.0,
                    icon: const Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
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
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
