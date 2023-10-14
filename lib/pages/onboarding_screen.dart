import 'package:flutter/material.dart';
import 'package:flutter_school/pages/home_page.dart';
import 'package:flutter_school/intro_screens/intro_page_1.dart';
import 'package:flutter_school/intro_screens/intro_page_2.dart';
import 'package:flutter_school/intro_screens/intro_page_3.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // controller to keep track of which page we're on
  PageController pageindicator = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageindicator,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          //Scrolling Dots
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                    onTap: () {
                      pageindicator.jumpToPage(2);
                    },
                    child: Text(
                      'Skip',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 15),
                    )),

                //dot indicator
                SmoothPageIndicator(
                    controller: pageindicator,
                    count: 3,
                    effect: JumpingDotEffect(
                        activeDotColor: Colors.white,
                        dotColor: Colors.grey.shade400)),

                //next or done

                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const HomePage();
                              },
                            ),
                          );
                        },
                        child: Text('Done',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 15)),
                      )
                    : GestureDetector(
                        onTap: () {
                          pageindicator.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('Next',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 15))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
