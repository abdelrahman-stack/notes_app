import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_button.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';


class AddFormButton extends StatefulWidget {
  const AddFormButton({super.key});

  @override
  State<AddFormButton> createState() => _AddFormButtonState();
}

GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _AddFormButtonState extends State<AddFormButton> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextField(
            hint: 'Tittle',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: 'Content',
            maxLine: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 70),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
              autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(height: 32),
        ], 
      ),
    );
  }
}
