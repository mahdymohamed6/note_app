import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

import '../cubits/notes_cubit/notes_cubit.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
 String? title,content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(onPressed: () {

            widget.note.title=title ?? widget.note.title;
            widget.note.subTitle=content ?? widget.note.subTitle;
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            widget.note.save();
        Navigator.pop(context);
          }, text: 'Edit Note', icon: Icons.check),
          const SizedBox(
            height: 40,
          ),
           CustomTextField(
               onChanged:(value){
                 title=value;
               } ,
               hint:  widget.note.title),
          const SizedBox(
            height: 20,
          ),

           CustomTextField(
            onChanged:(value){
              content=value;
            } ,
            hint: widget.note.subTitle,
            maxLine: 5,
          ),
        ],
      ),
    ));
  }
}
