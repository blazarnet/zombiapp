import 'package:flutter/material.dart';

class CardChipsWidget extends StatefulWidget {
  final Widget child;
  final Color color;
  final double elevation;

  const CardChipsWidget({this.child, this.color, this.elevation});

  @override
  _CardFichasWidgetState createState() => _CardFichasWidgetState();
}

class _CardFichasWidgetState extends State<CardChipsWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: widget.elevation,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: widget.color,
        child: widget.child);
  }
}
