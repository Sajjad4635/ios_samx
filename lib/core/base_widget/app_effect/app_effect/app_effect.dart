import 'package:flutter/material.dart';

class AppEffect {
  static BoxShadow shadowSmall = BoxShadow(
    color: Colors.black.withOpacity(0.07),
    blurRadius: 8,
    offset: const Offset(0, 4),
  );

  static BoxShadow shadowMedium = BoxShadow(
    color: Colors.black.withOpacity(0.20),
    blurRadius: 20,
    offset: const Offset(0, 6),
  );

  static BoxShadow shadowLarge = BoxShadow(
    color: Colors.black.withOpacity(0.30),
    blurRadius: 50,
    offset: const Offset(0, 15),
  );


}

