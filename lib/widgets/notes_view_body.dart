import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}

