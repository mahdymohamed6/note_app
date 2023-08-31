import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
          child: Text(
            'Add',
            style: TextStyle(color: Colors.black,

              fontSize: 20,
              fontWeight:  FontWeight.bold,

            ),
          )),
    );
  }
}
