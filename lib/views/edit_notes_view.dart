
import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

import '../widgets/edit_notes_view.dart';
class EditNotesView extends StatelessWidget {
  const EditNotesView({Key? key, required this.note}) : super(key: key);
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  EditNotesViewBody(note: note, ) ;
  }
}
