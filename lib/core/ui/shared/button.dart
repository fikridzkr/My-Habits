import 'package:flutter/material.dart';

class ButtonWidget extends MaterialButton {
  ButtonWidget.base({
    required Function() onPressed,
    required String label,
    Color color = Colors.white,
    double? elevetion = 2,
    bool sideBorder = false,
    Key? key,
  }) : super(
          key: key,
          color: color,
          onPressed: onPressed,
          minWidth: double.infinity,
          height: 60,
          elevation: elevetion,
          shape: RoundedRectangleBorder(
              side: sideBorder
                  ? const BorderSide(color: Colors.black87)
                  : const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(50)),
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        );
}
