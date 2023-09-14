import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
class  ColorItem extends StatelessWidget {
  const  ColorItem({Key? key, required this.isActive, required this.color}) : super(key: key);
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return  isActive ?
       CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    ) :  CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex=0;
    List<Color> colors=const[
      Color(0xff9c6644),
      Color(0xff005f73),
      Color(0xff0a9396),
      Color(0xff94d2bd),
      Color(0xffee9b00),
      Color(0xffca6702),
      Color(0xffae2012),
      Color(0xff9b2226),
      Color(0xffffcad4),


    ];
  @override

  Widget build(BuildContext context) {

    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){

            return  Padding(
              padding:const  EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(

                onTap: (){

                  currentIndex=index;
                  BlocProvider.of<AddNoteCubit>(context).color=colors[index];
                  setState(() {

                  });
                },

                  child: ColorItem(
                    color: colors[index],
                    isActive: currentIndex==index,)),
            );

          }),
    );
  }
}
