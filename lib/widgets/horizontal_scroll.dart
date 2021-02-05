import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HorizontalScrollWidget extends StatefulWidget {
  @override
  _HorizontalScrollWidgetState createState() => _HorizontalScrollWidgetState();
}

class _HorizontalScrollWidgetState extends State<HorizontalScrollWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .95,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Comprar fichas',
                style: TextStyle(fontSize: 16),
              ),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10.0),
                width: size.width * .95,
                height: 150.0,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.network(
                      "http://via.placeholder.com/350x150",
                      fit: BoxFit.fill,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  layout: SwiperLayout.STACK,
                  itemWidth: 200.0,
                  itemCount: 5,
                  // pagination: SwiperPagination(),
                  // control: SwiperControl(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
