import 'package:flutter/material.dart';
import 'package:simple_inventory/theme/palette.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

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
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
