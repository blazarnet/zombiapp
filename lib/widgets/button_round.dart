import 'package:flutter/material.dart';

class ButtonRoundWidget extends StatefulWidget {
  final Widget child;
  final String descripcion;
  final double fontSize, elevetion, height, minWidth;
  final FontWeight fontWeight;
  final Color colorText, colorButton, hoverColor;
  final VoidCallback onPressed;
  final ShapeBorder shape;

  const ButtonRoundWidget({
    this.child,
    this.descripcion,
    this.fontSize,
    this.fontWeight,
    this.colorText,
    this.colorButton,
    this.hoverColor,
    this.elevetion,
    this.height,
    this.minWidth,
    this.onPressed,
    this.shape,
  });

  @override
  _ButtonRoundWidgetState createState() => _ButtonRoundWidgetState();
}

class _ButtonRoundWidgetState extends State<ButtonRoundWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      child: widget.child,
      // child: Text(
      //   widget.descripcion,
      //   style: TextStyle(
      //       fontSize: widget.fontSize,
      //       fontWeight: widget.fontWeight,
      //       color: widget.colorText),
      // ),
      hoverColor: widget.hoverColor,
      color: widget.colorButton,
      elevation: widget.elevetion,
      height: widget.height,
      minWidth: widget.minWidth,
      shape: widget.shape,
    );
  }
}
