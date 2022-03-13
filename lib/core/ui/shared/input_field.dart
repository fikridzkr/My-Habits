import 'package:flutter/material.dart';
import 'package:my_habits/core/constants/color_constant.dart';

class InputFieldWidget extends StatefulWidget {
  final String label;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const InputFieldWidget(
      {Key? key,
      required this.label,
      this.obscureText = false,
      this.validator,
      required this.controller})
      : super(key: key);

  @override
  State<InputFieldWidget> createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.label,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CustomColor.textColour),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          validator: widget.validator,
          controller: widget.controller,
          style: const TextStyle(fontSize: 18),
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            focusColor: CustomColor.primaryColour,
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: CustomColor.primaryColour, width: 2.0),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: CustomColor.greyColour)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: CustomColor.greyColour)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
