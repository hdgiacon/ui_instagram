import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_instagram/home_page/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kReleaseMode,
      backgroundColor: const Color(0xFF2e2e2e),
      builder: (context) => const MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    ),
  );
}
