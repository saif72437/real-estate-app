import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:real_estate_app/Screens/bookingScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              const Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1501183638710-841dd1904471?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0XFF9d9d9f),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                      )),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0XFF9d9d9f),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Icon(
                        CupertinoIcons.heart,
                        color: Colors.white,
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 300),
                child: BlurryContainer(
                  blur: 6,
                  width: double.infinity,
                  height: 600,
                  elevation: 0,
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(0),
                  // borderRadius: const BorderRadius.all(Radius.circular(25)),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ubu Villa Flamboyan',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '\$273',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  'Ubu Villa Flamboyan',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\\Night',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal:2),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 10.0,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(
                              '4.60',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Real estate is a term used to describe land, properties, and buildings that are used for various purposes, such as residential, commercial, or industrial. Real estate is a major industry and can involve a variety of professionals, including real estate agents, brokers, appraisers, and developers',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                    BlurryContainer(
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
                                    'Get Discount now!',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    'Get additional discount for new users',
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
                        SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BookinScreen()));
                          },
                          child: Container(

                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                            ),
                            child: Center(child: Text('Book now', style: GoogleFonts.poppins(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
