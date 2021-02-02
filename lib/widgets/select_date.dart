import 'package:flutter/material.dart';
import 'package:zombifi_app/utils/responsive_screen.dart';
import 'package:zombifi_app/widgets/text_form_field.dart';

class SelectDateWidget extends StatefulWidget {
  final Color focusBorderColor;

  const SelectDateWidget({Key key, this.focusBorderColor}) : super(key: key);

  @override
  _SelectDateWidgetState createState() => _SelectDateWidgetState();
}

class _SelectDateWidgetState extends State<SelectDateWidget> {
  String _date;

  TextEditingController _dateBirth = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _dateBirth.dispose();
  }

  Screen size;
  double widht;
  double height;

  @override
  Widget build(BuildContext context) {
    widht = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    size = Screen(MediaQuery.of(context).size);
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Container(
            child: TextField(
              obscureText: false,
              controller: _dateBirth,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Fecha de nacmiento',
                prefixIcon: Icon(Icons.calendar_today, color: Colors.black),
              ),
              // onTap: () {
              //   FocusScope.of(context).requestFocus(new FocusNode());
              //   _selectDate(context);
              // },
            ),
          )),
        ],
      ),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1960),
        lastDate: new DateTime(2030),
        locale: Locale('es', 'ES'));
    if (picked != null) {
      setState(() {
        _date =
            "${picked.year.toString()}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
        _dateBirth.text = _date;
      });
    }
  }
}
