import 'package:flutter/material.dart';

import '../../theme/palette.dart';

class ScaffoldGradient extends StatelessWidget {
  final Scaffold child;
  const ScaffoldGradient({Key? key , required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: Palette.backgroundGradient,
        ),
      ),
      child: child,
    );
  }
}
