import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/add_note_buttom_sheet.dart';
import 'package:notes_app/views/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteButtomSheet();
            },
          );
        },
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
