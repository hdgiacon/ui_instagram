import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  final String foto;

  const MyStory({
    super.key,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              const SizedBox(
                width: 60.0,
              ),
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(foto),
                //backgroundColor: Colors.red,
              ),
              Container(
                width: 20.0,
                height: 20.0,
                padding: const EdgeInsets.all(2.0),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 15.0,
                  height: 15.0,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 10.0,
                  ),
                ),
              )
            ],
          ),
          onTap: () {},
        ),
        const SizedBox(height: 5.0),
        const Text(
          'Seu story',
          style: TextStyle(fontSize: 10.0, color: Colors.white),
        )
      ],
    );
  }
}
