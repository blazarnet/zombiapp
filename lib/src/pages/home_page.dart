import 'package:flutter/material.dart';
import 'package:zombifi_app/widgets/card_fichas.dart';
import 'package:zombifi_app/widgets/card_map_widget.dart';
import 'package:zombifi_app/widgets/card_status_on.dart';
import 'package:zombifi_app/widgets/horizontal_scroll.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: _avatar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              color: Color.fromRGBO(112, 112, 112, 1),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: size.width * 1,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(7)),
              _welcome(),
              Container(
                width: size.width * 1,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      _statusOnWidget(),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      _cardMapWidget(),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      _scrollWidget(context),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      _scrollWidget(context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _avatar() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: CircleAvatar(
        child: Text(
          'AM',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _welcome() {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'Hola,',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'Alan Moreno Martinez',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  CardStatusOnWidget _statusOnWidget() {
    return CardStatusOnWidget();
  }

  CardMapWidget _cardMapWidget() {
    return CardMapWidget();
  }

  HorizontalScrollWidget _scrollWidget(BuildContext context) {
    return HorizontalScrollWidget(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: _cardFichas(context),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: _cardFichas(context),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: _cardFichas(context),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: _cardFichas(context),
        ),
      ],
    );
  }

  CardFichasWidget _cardFichas(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CardFichasWidget(
      child: Container(
        child: FlatButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: size.width * .45,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      // color: Color.fromARGB(5, 175, 102, 1),
                                      color: Color.fromRGBO(5, 175, 102, .5),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.shopping_cart_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Basic 15',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '15.50',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('Tipo: '),
                                    Text(
                                      'Tiempo',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('Duración: '),
                                    Text(
                                      '1h',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('Descarga: '),
                                    Text(
                                      '2Mbps',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('Subida: '),
                                    Text(
                                      '1Mbps',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
