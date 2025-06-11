import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Popular extends StatelessWidget {
  String text1, text2, url;
  Popular({Key? key, required this.text1, required this.text2, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Stack(
        children: [
          ClipRRect(

              borderRadius: BorderRadius.circular(20),
              child: Image(image: NetworkImage(url), height: 190,width: double.infinity, fit: BoxFit.cover,)),

          Padding(
            padding: EdgeInsets.only(top: 120, left: 10, right: 10),
            child: BlurryContainer(
              blur: 10,
              width: double.infinity,
              height: 60,
              elevation: 5,

              color: Colors.transparent,
              padding: const EdgeInsets.all(0),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text1,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            text2,
                            style: GoogleFonts.poppins(
                              color: Colors.grey[400],
                              fontSize: 12,

                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(CupertinoIcons.arrow_up_right, color: Colors.white,),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
