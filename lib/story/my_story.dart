import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  const MyStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          child: Stack(
            children: <Widget>[
              const CircleAvatar(
                //backgroundImage: NetworkImage('hweudhwie'),
                backgroundColor: Colors.red,
              ),
              Container(
                width: 10.0,
                height: 10.0,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          ),
          onTap: () {},
        ),
        const Text(
          'Seu story',
          style: TextStyle(fontSize: 10.0, color: Colors.white),
        )
      ],
    );
  }
}
