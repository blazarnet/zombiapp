import 'package:flutter/material.dart';

class ButtonRoundWidget extends StatefulWidget {
  final String descripcion;
  final double fontSize, elevetion, height, minWidth;
  final FontWeight fontWeight;
  final Color colorText, colorButton;

  const ButtonRoundWidget(
    this.descripcion,
    this.fontSize,
    this.fontWeight,
    this.colorText,
    this.colorButton,
    this.elevetion,
    this.height,
    this.minWidth,
  );

  @override
  _ButtonRoundWidgetState createState() => _ButtonRoundWidgetState();
}

class _ButtonRoundWidgetState extends State<ButtonRoundWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        widget.descripcion,
        style: TextStyle(
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
            color: widget.colorText),
      ),
      color: widget.colorButton,
      elevation: widget.elevetion,
      height: widget.height,
      minWidth: widget.minWidth,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
