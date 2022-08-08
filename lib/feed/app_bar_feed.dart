import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar feedAppbar = AppBar(
  backgroundColor: Colors.black,
  title: Row(
    children: [
      const Text(
        'Instagram',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: 'Lobster',
        ),
      ),
      IconButton(
        onPressed: () {},
        padding: const EdgeInsets.only(top: 4.0, right: 8.0),
        iconSize: 12.0,
        icon: const Icon(
          FontAwesomeIcons.chevronDown,
          color: Colors.white,
        ),
      )
    ],
  ),
  actions: <Widget>[
    InkWell(
      onTap: () {},
      child: Container(
        width: 30.0,
        //height: 10.0,
        margin: const EdgeInsets.only(top: 14.0, bottom: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.white,
            width: 3.0,
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 20.0,
        ),
      ),
    ),
    const SizedBox(width: 15.0),
    IconButton(
      onPressed: () {},
      iconSize: 25.0,
      icon: const Icon(
        FontAwesomeIcons.heart,
        color: Colors.white,
      ),
    ),
    const SizedBox(width: 10.0),
    IconButton(
      onPressed: () {},
      iconSize: 25.0,
      icon: const Icon(
        FontAwesomeIcons.facebookMessenger,
        color: Colors.white,
      ),
    ),
    const SizedBox(width: 10.0),
  ],
);
