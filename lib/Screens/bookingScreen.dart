import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_app/Utils/location.dart';
import 'package:real_estate_app/Utils/popular.dart';
import 'package:real_estate_app/Utils/selectDate.dart';
import 'package:real_estate_app/Utils/swapButtons.dart';
class BookinScreen extends StatelessWidget {
  const BookinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0XFFf6f6f6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.black,
                          )),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.redAccent,),
                        Text('Rembang,Ind', style: GoogleFonts.poppins(color: Colors.black, ),)
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0XFFf6f6f6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Icon(
                            CupertinoIcons.heart,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
               SizedBox(height: 10,),
               SwapButtons(),
              SizedBox(height: 10,),
                Location(),
              SizedBox(height: 10,),
                Row(
                  children: [
                    SelectDate(text: 'Start date',),
                    SizedBox(width: 20,),
                    SelectDate(text: 'End date',),
                  ],
                ),
                SizedBox(height: 10,),
                Container(

                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(child: Text('Search', style: GoogleFonts.poppins(color: Colors.white, fontSize: 20,),)),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular', style: GoogleFonts.poppins(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('See all', style: GoogleFonts.poppins( fontSize: 15, fontWeight: FontWeight.w500),),

                  ],
                ),
                SizedBox(height: 20,),

                SingleChildScrollView(

                  child: Column(
                    children: [
                      Popular(text1: 'Mardan Pakistan', text2: 'KPK Islamabad', url:
                      'https://images.unsplash.com/photo-1592595896551-12b371d546d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',),


                      SizedBox(height: 10,),
                      Popular(text1: 'Islamabad Pakistan', text2: 'Punjab Islamabad', url: 'https://images.unsplash.com/photo-1565402170291-8491f14678db?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=817&q=80',),
                      SizedBox(height: 10,),
                      Popular(text1: 'Peshawar Pakistan', text2: 'KPK Islamabad', url: 'https://images.unsplash.com/photo-1582407947304-fd86f028f716?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=996&q=80',),
                      SizedBox(height: 10,),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
