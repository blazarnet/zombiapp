import 'package:flutter/material.dart';

class CardFichasWidget extends StatefulWidget {
  final Widget child;

  const CardFichasWidget({this.child});

  @override
  _CardFichasWidgetState createState() => _CardFichasWidgetState();
}

class _CardFichasWidgetState extends State<CardFichasWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: widget.child);
  }
}
