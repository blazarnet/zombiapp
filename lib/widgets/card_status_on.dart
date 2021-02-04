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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.greenAccent,
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * .95,
            child: Padding(
              padding: EdgeInsets.all(11),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Estado de ficha actual",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text("Basic 15",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
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
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 4),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Text(
                                  'Duración 1h',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 4),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.arrow_circle_down_outlined,
                                    color: Colors.white, size: 15),
                                Text(
                                  'Descarga 2Mbs',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 4),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_circle_up_outlined,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Text(
                                  'Subida 1Mbs',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          FlatButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(0, 190, 107, 0.5),
                              child: Column(
                                children: <Widget>[
                                  Text('Tiempo restante',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13)),
                                  Text('--',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ],
                              )),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            padding: EdgeInsets.all(7),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromRGBO(0, 190, 107, 0.5),
                            child: Column(
                              children: <Widget>[
                                Text('Descarga restante',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13)),
                                Text(
                                  '--',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          FlatButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(0, 190, 107, 0.5),
                              child: Column(
                                children: <Widget>[
                                  Text('Subida restante',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13)),
                                  Text(
                                    '--',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  )
                                ],
                              )),
                        ],
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
