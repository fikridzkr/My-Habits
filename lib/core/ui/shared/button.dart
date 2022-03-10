import 'package:flutter/material.dart';

class ButtonWidget extends MaterialButton {
  const ButtonWidget({
    required Function() onPressed,
    Key? key,
  }) : super(key: key, onPressed: onPressed);
}
