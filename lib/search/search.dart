import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        childAspectRatio: 3 / 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.amberAccent,
        );
      },
    );
  }
}
