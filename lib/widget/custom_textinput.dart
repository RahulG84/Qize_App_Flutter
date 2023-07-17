import 'package:flutter/material.dart';

import '../utils/hex_color.dart';

class CustomTextFiled extends StatefulWidget {
  void Function(String)? onChangeText;
  TextEditingController? nameControler;
  CustomTextFiled({Key? key, this.onChangeText, this.nameControler})
      : super(key: key);

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: widget.nameControler,
        onChanged: widget.onChangeText,
        keyboardType: TextInputType.text,
        style: const TextStyle(color: Colors.white, fontSize: 20),
        decoration: const InputDecoration(
            labelText: "Enter You Name",
            labelStyle: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            prefixIcon: Icon(
              Icons.person_3_outlined,
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 2.00,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
              width: 2.00,
            ))),
      ),
    );
  }
}
