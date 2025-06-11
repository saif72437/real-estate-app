import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Expanded(
          child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0XFFf6f6f6),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.grey),
                    SizedBox(width: 10,),
                    Text('Search location', style: GoogleFonts.poppins(color: Colors.grey),)
                  ],
                ),
              ),
        ),
    SizedBox(width: 10,),

    Container(
      height: 65,
    width: 65,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
    color: Color(0XFFf6f6f6),
    borderRadius: BorderRadius.circular(33)
    ),
      child: Icon(Icons.my_location,color: Colors.grey),
    ),
      ],
    );
  }
}
