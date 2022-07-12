import 'package:flutter/material.dart';
import 'package:ui_instagram/story/my_story.dart';
import 'package:ui_instagram/story/story.dart';

class InstagramHome extends StatelessWidget {
  const InstagramHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listStory = [
      const MyStory(
        foto:
            'https://pbs.twimg.com/profile_images/1190742144/mrbean-270x300_400x400.jpg',
      ),
      const Story(
        storyLabel: 'João',
        foto:
            'https://cdn.mensagenscomamor.com/content/images/m000532523.jpg?v=1',
      ),
      const Story(
        storyLabel: 'Pedro',
        foto:
            'https://criativafm.com/wp-content/uploads/2021/07/silvio-santos-23072021133102595.jpeg',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          // iconce coraçao
          // icone messenger
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .10,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listStory.length,
                  itemBuilder: (context, index) {
                    return listStory[index];
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
