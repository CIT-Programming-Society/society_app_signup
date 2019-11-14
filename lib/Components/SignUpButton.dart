import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slider_button/slider_button.dart';

class SignUpButton extends StatefulWidget {
  final String buttonText;
  final String iconPath;
  final Function actionFunction;

  SignUpButton({this.buttonText, this.iconPath, this.actionFunction});

  @override
  _SignUpButtonState createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  bool isTouched = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil instance = ScreenUtil.getInstance();
    return GestureDetector(
      onLongPress: () {
        setState(() {
          isTouched = true;
        });
      },
      onHorizontalDragStart: (DragStartDetails details) {
        setState(() {
          isTouched = true;
        });
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        setState(() {
          isTouched = false;
        });
      },
      onLongPressEnd: (LongPressEndDetails details) {
        setState(() {
          isTouched = false;
        });
      },
      child: SliderButton(
        action: widget.actionFunction,
        label: Text(
          "${widget.buttonText}",
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(fontSize: instance.setSp(14)),
        ),
        icon: Padding(
            padding: EdgeInsets.all(instance.setWidth(10)),
            child: Center(child: Image.asset('${widget.iconPath}'))),
        buttonColor: Colors.white,
        width: instance.setWidth(340),
        height: instance.setHeight(50),
        shimmer: isTouched,
        alignLabel: Alignment.center,
      ),
    );
  }
}
