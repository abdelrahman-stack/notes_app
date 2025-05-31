import 'package:flutter/material.dart';
import 'package:notes_app/constent.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widget/colors_list_view.dart';


class ColorEditNoteList extends StatefulWidget {
  const ColorEditNoteList({super.key, required this.note});
  final NoteModel note;
  @override
  State<ColorEditNoteList> createState() => _ColorEditNoteListState();
}

class _ColorEditNoteListState extends State<ColorEditNoteList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].toARGB32();
                setState(() {
                  
                });
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
