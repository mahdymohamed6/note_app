
import 'package:flutter/material.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title,subTitle;

  final GlobalKey<FormState> formKey=GlobalKey();
  // to show error if the input is not right
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      autovalidateMode:autoValidateMode ,
      child:  Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(hint: 'Title',
            onSaved: (value){
              title=value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            onSaved: (value){
              subTitle=value;
            },
            maxLine: 5,
          ),
          const   SizedBox(
            height: 16,
          ),
          CustomButton(

            onTap:() {
              if (formKey.currentState!.validate()){

                formKey.currentState!.save();
              }else{

                autoValidateMode=AutovalidateMode.always;
                setState(() {});
              }

            } ,
          ),
          const   SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
