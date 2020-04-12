import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

class RoundCheckBox extends StatefulWidget {
  RoundCheckBox(
      {Key key,
      @required this.value,
      this.onChanged,
      this.activeColor = const Color(0xFF9C92FF)})
      : super(key: key);

  var value = false;

  Function(bool) onChanged;

  Color activeColor;

  @override
  _RoundCheckBoxState createState() => _RoundCheckBoxState();
}

class _RoundCheckBoxState extends State<RoundCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          onTap: () {
            widget.value = !widget.value;
            widget.onChanged(widget.value);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: widget.value
                ? Icon(
                    Icons.check_circle,
                    size: 25.0,
                    color: widget.activeColor,
                  )
                : Icon(
                    Icons.panorama_fish_eye,
                    size: 25.0,
                    color: Colors.grey,
                  ),
          )),
    );
  }
}
