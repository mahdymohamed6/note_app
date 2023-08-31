import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Padding(
         padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
        SizedBox(
          height: 50,
        ),

          CustomAppBar(text: 'Edit Note', icon: Icons.check),
          SizedBox(height:40 ,),
          CustomTextField(hint: 'Title'),
          SizedBox(height:20 ,),
          CustomTextField(hint: 'content',maxLine: 5,),

        ],),
      )

    );
  }
}
