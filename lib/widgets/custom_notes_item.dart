import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24,top: 24,left: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.orangeAccent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black,fontSize: 26),
            ),
            subtitle:  Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text(
                'build your career with tharwat samy',
                style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(

                  Icons.delete,
                  color: Colors.black,
                  size: 28,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              '29 may ,2023',
              style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}