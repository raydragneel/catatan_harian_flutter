import 'package:flutter/material.dart';
import 'package:catatan_harian/static_data.dart';

class MyInput extends StatelessWidget {
  final String title;
  final Widget? icon;
  final TextEditingController controller;
  final bool obsecure;
  final bool autofocus;
  final TextInputType type;
  final String? Function(String?)? validator;

  const MyInput(
      {required this.title,
      this.icon,
      required this.controller,
      this.obsecure = false,
      this.type = TextInputType.text,
      required this.validator,
      this.autofocus = false});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          autofocus: autofocus,
          keyboardType: type,
          obscureText: obsecure,
          controller: controller,
          validator: validator,
          style: TextStyle(color: StaticData.inputColor, fontSize: 14),
          decoration: InputDecoration(
            labelText: "$title",
            filled: true,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            hintText: "$title",
            suffixIcon: icon,
          ),
        ),
      ),
    );
  }
}
