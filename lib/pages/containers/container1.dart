import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
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
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [ 

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),

            ],
          ),

          const SizedBox(height: 50,),

          Container(
            height: 350,
            // height: h!/1.0,
            // width: w!/1.2,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(illustration1),
          fit: BoxFit.contain)),),

          const SizedBox(height: 50,),

          Text('Track your \nExpenses to \nSave Money',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: w!/10, fontWeight: FontWeight.bold,
              height: 1.2),),

          const SizedBox(
            height: 10,
          ),

          Text('Helps you to organize \nyour income and expenses',
          textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 18,),
          ),

          const SizedBox(
            height: 30,
          ),

          Container(
            height: 55,
            child: ElevatedButton.icon(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.primary)),
                  onPressed: () {}, icon: const Icon(Icons.arrow_drop_down), label: const Text('Try free demo', style: TextStyle(fontSize: 18),)),
          ),

          const SizedBox(height: 30,),

          Text('— Web, iOs and Android', style: TextStyle(color: Colors.grey.shade400, fontSize: 18),),

          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }


//================== DESKTOP ===================

  Widget DesktopContainer1(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [ 
          Expanded(child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Track your \nExpenses to \nSave Money', style: TextStyle(fontSize: w!/20, fontWeight: FontWeight.bold,
                height: 1.2),),

                const SizedBox(
                  height: 10,
                ),

                Text('Helps you to organize your income and expenses',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 20,
                ),),

                const SizedBox(
                  height: 30,
                ),

                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.primary)),
                        onPressed: () {}, icon: const Icon(Icons.arrow_drop_down), label: const Text('Try free demo')),
                    ),
                    const SizedBox(width: 20,),

                    Text('— Web, iOs and Android', style: TextStyle(color: Colors.grey.shade400, fontSize: 20),)
                  ],
                )
              ],
            ),
          )),

          Expanded(child: Container(height: 500,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(illustration1),
          fit: BoxFit.contain)),))
        ],
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