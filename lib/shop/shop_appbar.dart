import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar shopAppbar = AppBar(
  backgroundColor: Colors.black,
  title: const Text(
    'Loja',
    style: TextStyle(color: Colors.white, fontSize: 30.0),
  ),
  actions: [
    // icone de drawer
    IconButton(
      onPressed: () {},
      icon: const Icon(
        FontAwesomeIcons.bars,
        color: Colors.white,
      ),
    ),
    const SizedBox(width: 10.0)
  ],
);
