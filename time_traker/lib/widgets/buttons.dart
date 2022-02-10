import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.imageUrl,
    required this.onTab,
    required this.text,
    required this.color,
    required this.textColor,
    required this.pading,
  }) : super(key: key);

  final String? imageUrl;
  final String text;
  final Function onTab;
  final Color color;
  final Color textColor;
  final double pading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Image(
              height: 35.0,
              width: 35.0,
              image: AssetImage(imageUrl!),
            ),
            SizedBox(width: pading),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 20.0),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          primary: color,
          onPrimary: Colors.white,
          minimumSize: const Size(350, 50),
          animationDuration: const Duration(milliseconds: 200),
          elevation: 5.0,
        ),
      ),
    );
  }
}