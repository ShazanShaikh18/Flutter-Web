import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }


  //================== MOBILE ===================

  Widget MobileContainer1(){
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(top: -150, right: -120,
                  child: Container(height: 320, width: 320,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(vector), fit: BoxFit.contain)),),),

                Positioned(bottom: -80, left: -50,
                  child: Container(height: 320, width: 320,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(vector1), fit: BoxFit.contain)),),),

                Positioned(left: 43, right: 43, bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 190,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(dashboard))
                  ),
                ),)
              ],
            ),
          ),


          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogoForMobile(fb),
                companyLogoForMobile(google),
                companyLogoForMobile(cocacola),
                companyLogoForMobile(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }


//================== DESKTOP ===================

  Widget DesktopContainer1(){
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(top: -20, right: -10,
                  child: Container(height: 320, width: 320,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(vector), fit: BoxFit.contain)),),),

                Positioned(bottom: -20, left: -20,
                  child: Container(height: 320, width: 320,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(vector1), fit: BoxFit.contain)),),),

                Positioned(left: 43, right: 43, bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 712,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(dashboard))
                  ),
                ),)
              ],
            ),
          ),


          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogoForDesktop(fb),
                companyLogoForDesktop(google),
                companyLogoForDesktop(cocacola),
                companyLogoForDesktop(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

   Widget companyLogoForMobile(String image) {
    return Container(
      width: 80,
      height: 36,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain)
      ),
    );
  }

  Widget companyLogoForDesktop(String image) {
    return Container(
      width: 160,
      height: 36,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain)
      ),
    );
  }


  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(onPressed: () {}, child: Text(text, style: const TextStyle(backgroundColor: Color.fromARGB(255, 250, 244, 235), color: Colors.black45, fontSize: 15),),),
    );
  }
}