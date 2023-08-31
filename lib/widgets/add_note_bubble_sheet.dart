import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

import 'custom_buttom.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLine: 5,
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

