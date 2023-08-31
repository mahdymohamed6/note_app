
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint,  this.maxLine=1}) : super(key: key);
final String hint;
final int maxLine;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: Colors.lightBlueAccent,
      maxLines: maxLine,
      decoration: InputDecoration(


        hintText: hint,

        border: buildBorder(),
      enabledBorder: buildBorder(),
        focusedBorder:buildBorder(color: Colors.lightBlueAccent),
      ),

    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color:color ?? Colors.white),
      );
  }
}
