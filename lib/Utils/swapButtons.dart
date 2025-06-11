import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SwapButtons extends StatelessWidget {
  const SwapButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(

          color: Colors.black,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('Rent',style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('Buy',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),),
            ),
          ),
        ],
      ),),
    );
  }
}
