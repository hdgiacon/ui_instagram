import 'package:flutter/material.dart';

var flagIconButton = false;

AppBar searchAppbar = AppBar(
  backgroundColor: Colors.black,
  elevation: 0.0,
  title: Container(
    height: kToolbarHeight - 10.0,
    padding: const EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
      color: Colors.grey[350]!.withAlpha(60),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Row(
      children: [
        IconButton(
          onPressed: () {
            // vai ter que aplicar alguma gerencia de estado aqui
            flagIconButton = true;
          },
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 5.0),
        Expanded(
          child: TextField(
            onTap: () {
              flagIconButton = true;
            },
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
);
