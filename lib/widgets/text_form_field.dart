import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zombifi_app/utils/responsive_screen.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle style;
  final TextAlign textAlign;
  final bool autofocus;
  final bool obscureText;
  final bool autocorrect;
  final int maxLines;
  final Key key;
  final int maxLength;
  final bool maxLengthEnforced;
  final ValueChanged<String> onChanged;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onSubmitted;
  final ValueChanged<String> onTap;
  final List<TextInputFormatter> inputFormatters;
  final bool enabled;
  final IconData icon;
  final Color iconColor;
  final Color focusBorderColor;
  final String hintText;
  final String helperText;
  final String lableText;
  final double cursorWidth;
  final Radius cursorRadius;
  final Color cursorColor;
  final Color defaultBorderColor;
  final Brightness keyboardAppearance;
  final EdgeInsets scrollPadding;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;

  final FormFieldSetter<String> onSaved;

  const TextFormFieldWidget({
    this.key,
    this.controller,
    this.focusNode,
    TextInputType keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.icon,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
    this.obscureText = false,
    this.autocorrect = true,
    this.maxLines = 1,
    this.maxLength,
    this.onSaved,
    this.hintText,
    this.helperText,
    this.lableText,
    this.maxLengthEnforced = true,
    this.onChanged,
    this.defaultBorderColor,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    this.iconColor,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.cursorColor,
    this.focusBorderColor,
    this.keyboardAppearance,
    this.scrollPadding,
    this.validator,
    this.onFieldSubmitted,
  })  : assert(textAlign != null),
        assert(autofocus != null),
        assert(obscureText != null),
        assert(autocorrect != null),
        assert(maxLengthEnforced != null),
        assert(maxLines == null || maxLines > 0),
        assert(maxLength == null || maxLength > 0),
        keyboardType = keyboardType ??
            (maxLines == 1 ? TextInputType.text : TextInputType.multiline);

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  double width;
  double height;
  FocusNode _focusNode = FocusNode();
  ValueChanged<Colors> focusColorChange;
  Screen size;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      alignment: Alignment.center,
      child: TextFormField(
        obscureText: widget.obscureText,
        controller: widget.controller,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          prefixIcon: Icon(
            widget.icon,
            color: widget.iconColor,
          ),
          labelText: widget.lableText,
          hintText: widget.hintText,
          helperText: widget.helperText,
        ),
      ),
    );
  }
}
