part of 'add_note_cubit.dart';

abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}
class AddNoteSuccess extends AddNoteState{}
class AddNoteLoading extends AddNoteState{}
class AddNoteFailure extends AddNoteState{

  final String error;

  AddNoteFailure(this.error);




}