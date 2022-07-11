import 'package:flutter/material.dart';
import 'package:ui_instagram/story/my_story.dart';

class InstagramHome extends StatelessWidget {
  const InstagramHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listStory = [
      const MyStory(),
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
                const RoundedRectangleBorder(
                  side: BorderSide(
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
        child: Column(
          children: <Widget>[
            LayoutBuilder(
              builder: ((context, constraints) {
                return SizedBox(
                  height: constraints.maxHeight * .6,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return listStory[index];
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
