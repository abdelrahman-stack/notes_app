import 'package:flutter/material.dart';
import 'package:notes_app/constent.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLine = 1,
    this.onSaved,
  });
  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Feildis required";
        } else {
          return null;
        }
      },
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        border: customBuildBorder(),
        enabledBorder: customBuildBorder(),
        focusedBorder: customBuildBorder(kPrimaryColor),
      ),
    );
  }

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  OutlineInputBorder customBuildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
