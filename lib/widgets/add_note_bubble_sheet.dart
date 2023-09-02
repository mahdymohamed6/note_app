import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

import 'add_note_form.dart';
import 'custom_buttom.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child:AddNoteForm() ,
      ),
    );
  }
}