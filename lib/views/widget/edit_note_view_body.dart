import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_app_bar.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(tittle: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextField(hint: 'Tittle'),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLine: 5),
        ],
      ),
    );
  }
}
