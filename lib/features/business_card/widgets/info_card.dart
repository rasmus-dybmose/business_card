import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  InfoCard({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  final TextStyle contactTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: 'Source Sans 3',
    color: Colors.indigo[900],
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.indigo,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: contactTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
