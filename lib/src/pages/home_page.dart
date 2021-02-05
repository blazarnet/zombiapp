import 'package:flutter/material.dart';
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
                      _scrollWidget(),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      _scrollWidget(),
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
                    style: TextStyle(fontSize: 25),
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

  HorizontalScrollWidget _scrollWidget() {
    return HorizontalScrollWidget();
  }
}
