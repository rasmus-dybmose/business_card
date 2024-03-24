import 'package:auto_size_text/auto_size_text.dart';
import 'package:business_card/features/business_card/widgets/avatar.dart';
import 'package:business_card/features/business_card/widgets/info_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});
  @override
  Widget build(BuildContext context) {
    const TextStyle nameTextStyle = TextStyle(
      fontFamily: 'Pacifico',
      fontSize: 40,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    final TextStyle titleTextStyle = TextStyle(
      fontSize: 20,
      letterSpacing: 2.5,
      fontFamily: 'Source Sans 3',
      fontWeight: FontWeight.bold,
      color: Colors.indigo[100],
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Avatar(),
              const AutoSizeText(
                'Rasmus Grønnegård Dybmose',
                maxLines: 1,
                style: nameTextStyle,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: AutoSizeText(
                  'FLUTTER DEVELOPER',
                  maxLines: 1,
                  style: titleTextStyle,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.indigo[100],
                ),
              ),
              InfoCard(icon: CupertinoIcons.phone, text: 'phone number'),
              InfoCard(icon: CupertinoIcons.mail, text: 'email address'),
            ],
          ),
        ),
      ),
    );
  }
}
