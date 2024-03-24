import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 120,
      backgroundImage: AssetImage('assets/images/me.jpeg'),
    );
  }
}
