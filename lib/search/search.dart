import 'package:flutter/material.dart';

part 'search_appbar.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchAppbar,
      backgroundColor: Colors.black,
      body: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          //childAspectRatio: MediaQuery.of(context).size.width /
          //    (MediaQuery.of(context).size.height / 1.4),
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.deepPurple,
          );
        },
      ),
    );
  }
}
