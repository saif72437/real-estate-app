import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SelectDate extends StatelessWidget {
  String text;
  SelectDate({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(

        height: 70,
        decoration: BoxDecoration(
            color: Color(0XFFf6f6f6),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Row(children: [
          SizedBox(width: 10,),
          Icon(Icons.date_range_rounded, color: Colors.grey,),
          SizedBox(width: 10,),
          Text(text, style: GoogleFonts.poppins(color: Colors.grey),),

        ],),
      ),
    );
  }
}
