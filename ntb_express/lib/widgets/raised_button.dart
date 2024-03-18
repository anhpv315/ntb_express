import 'package:flutter/material.dart';

class RaisedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color color;
  final Color textColor;
  final Color disabledColor;
  final Color disabledTextColor;

  const RaisedButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.disabledColor = Colors.grey,
    this.disabledTextColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return disabledColor;
          }
          return color;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return disabledTextColor;
          }
          return textColor;
        }),
      ),
      child: child,
    );
  }
}