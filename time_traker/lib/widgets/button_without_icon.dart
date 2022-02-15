import 'package:flutter/material.dart';

class ButtonWithOutIcon extends StatelessWidget {
  const ButtonWithOutIcon({
    Key? key,
    required this.onTab,
    required this.text,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final String text;
  final Function onTab;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      child: ElevatedButton(
        onPressed: () {
          onTab();
        },
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20.0),
        ),
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          primary: color,
          onPrimary: Colors.white,
          minimumSize: const Size(362, 50),
          animationDuration: const Duration(milliseconds: 200),
          elevation: 5.0,
        ),
      ),
    );
  }
}
