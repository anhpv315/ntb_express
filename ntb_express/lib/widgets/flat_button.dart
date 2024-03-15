import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double? minWidth;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final ShapeBorder? shape;
  final FocusNode? focusNode;
  final bool autofocus;
  final MouseCursor? mouseCursor;
  final MaterialTapTargetSize? materialTapTargetSize;
  final Color? highlightColor;
  final Color? splashColor;
  final BorderSide? borderSide;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? fillColor;
  final Widget child;

  const FlatButton({
    Key? key,
    required this.onPressed,
    this.color,
    this.textColor,
    this.minWidth,
    this.height,
    this.padding,
    this.shape,
    this.focusNode,
    this.autofocus = false,
    this.mouseCursor,
    this.materialTapTargetSize,
    this.highlightColor,
    this.splashColor,
    this.borderSide,
    this.focusColor,
    this.hoverColor,
    this.fillColor, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color ?? Colors.transparent),
        minimumSize: MaterialStateProperty.all<Size>(Size(minWidth ?? 88.0, height ?? 36.0)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(padding ?? EdgeInsets.zero),
        // shape: MaterialStateProperty.all<OutlinedBorder>(
        //   shape ?? RoundedRectangleBorder(), // Sử dụng RoundedRectangleBorder hoặc lớp con của nó
        // ),        overlayColor: MaterialStateProperty.all<Color>(highlightColor ?? Colors.transparent),
        splashFactory: NoSplash.splashFactory,
      ),
      child: child

    );
  }
}