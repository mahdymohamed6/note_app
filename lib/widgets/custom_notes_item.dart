import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

import '../views/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){

        Navigator.push(context, MaterialPageRoute(builder: (context){

          return    EditNotesView(note: note,) ;

        }));


      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 24,top: 24,left: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(note.color)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                note.title,
                style:const TextStyle(color: Colors.black,fontSize: 26),
              ),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(

                    Icons.delete,
                    color: Colors.black,
                    size: 28,
                  )),
            ),
            Padding(

              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}