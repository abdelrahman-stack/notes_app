import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widget/colors_list_view.dart';
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
<<<<<<< HEAD
                    SizedBox(height: 32),

          ColorListView(),
          SizedBox(height: 32),
=======
          ColorListView(),
          SizedBox(height: 70),
>>>>>>> 1b926c5c5bfa2332aba6bda7b516036c11116da4
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat.yMd().format(currentDate);
                    var noteModel = NoteModel(
                      tittle: title!,
                      subTittle: subTitle!,
                      date: formattedCurrentDate,
                      color: Colors.blue.toARGB32(),
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
<<<<<<< HEAD
=======
}
class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 38,
      backgroundColor: Colors.blue,
    );
  }
}
class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal ,
        itemBuilder: (context , index){
        return ColorItem();
      }),
    );
  }
>>>>>>> 1b926c5c5bfa2332aba6bda7b516036c11116da4
}