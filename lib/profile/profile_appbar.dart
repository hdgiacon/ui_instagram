import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar profileAppbar = AppBar(
  backgroundColor: Colors.black,
  title: Row(
    children: [
      const Icon(
        Icons.lock,
        color: Colors.white,
        size: 12.0,
      ),
      const SizedBox(width: 5.0),
      const Text(
        'profile_name',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
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
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 11.0),
        child: Container(
          width: 30.0,
          //height: 10.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    ),
    const SizedBox(width: 15.0),
    IconButton(
      onPressed: () {},
      iconSize: 25.0,
      icon: const Icon(
        FontAwesomeIcons.bars,
        color: Colors.white,
      ),
    ),
    const SizedBox(width: 10.0),
  ],
);
