import 'package:flutter/material.dart';
import 'package:vanshbook/constants.dart';
import 'package:vanshbook/pages/empty_family_page.dart';

class get_Started_Screeen extends StatefulWidget {
  const get_Started_Screeen({Key? key}) : super(key: key);

  @override
  State<get_Started_Screeen> createState() => _get_Started_ScreeenState();
}

class _get_Started_ScreeenState extends State<get_Started_Screeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryPink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                text_Container(),
                logo_container(),
                SizedBox(
                  height: 30,
                ),
                description_text_container(),
                SizedBox(
                  height: 44,
                ),
                get_started_button(),
              ],
            ),
          ),
          bottom_box(),
        ],
      ),
    );
  }

  Widget text_Container() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Text(
        "Welcome to create your digital vanshavali",
        style: TextStyle(
          fontSize: 28,
          color: textPink,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget logo_container() {
    return Container(
        child: Image.asset(
      "assets/vanshbook_logo.png",
      height: 200,
      width: 200,
    ));
  }

  Widget description_text_container() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        "This app helps to create family tree diagram quickly and easily. The created family tree shall be shared with others as picture or pdf. This app works offline.",
        style: TextStyle(
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget get_started_button() {
    return Align(
      alignment: Alignment.center,
      child: MaterialButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => empty_family_page())));
        },
        height: 70,
        minWidth: 200,
        child: Text(
          "Get Started",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget bottom_box() {
    return Container(
      alignment: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      height: 60,
      color: lightPink.withOpacity(0.5),
    );
  }
}
