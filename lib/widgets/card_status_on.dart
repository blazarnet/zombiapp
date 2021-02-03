import 'package:flutter/material.dart';

class CardStatusOnWidget extends StatefulWidget {
  @override
  _CardStatusOnWidgetState createState() => _CardStatusOnWidgetState();
}

class _CardStatusOnWidgetState extends State<CardStatusOnWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: Colors.greenAccent,
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * .9,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Estado de ficha actual"),
                            Text("Basic 15")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wifi_rounded,
                              size: 40,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(1.5),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.watch_later_outlined),
                                Text('Duración 1h')
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.5),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.arrow_circle_down_outlined),
                                Text('Descarga 2Mbs')
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.5),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.arrow_circle_up_outlined),
                                Text('Subida 1Mbs')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[Text('Tiempo restante')],
                      ),
                      Column(
                        children: <Widget>[Text('Descarga restante')],
                      ),
                      Column(
                        children: <Widget>[Text('Subida restante')],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
