import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Svg extends StatelessWidget {
  const Svg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset("Assets/Svg/logo.svg",
            colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn)),
      ),
    );
  }
}
