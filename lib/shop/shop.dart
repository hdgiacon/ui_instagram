import 'package:flutter/material.dart';
import 'package:ui_instagram/shop/shop_appbar.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopFiltersList = [
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[350]!.withAlpha(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: const Text(
          'Lojas',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[350]!.withAlpha(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: const Text(
          'Vídeos',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[350]!.withAlpha(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: const Text(
          'Escolhas do editor',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[350]!.withAlpha(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: const Text(
          'Coleções',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[350]!.withAlpha(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: const Text(
          'Guias',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: shopAppbar,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            height: kToolbarHeight - 10.0,
            padding: const EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              color: Colors.grey[350]!.withAlpha(60),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: TextField(
                    onTap: () {},
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: 'Pesquisar',
                      hintStyle: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 21.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(width: 5.0),
              itemCount: shopFiltersList.length,
              itemBuilder: (context, index) {
                return shopFiltersList[index];
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.deepPurple,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
