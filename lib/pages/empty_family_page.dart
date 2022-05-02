import 'package:flutter/material.dart';
import 'package:vanshbook/constants.dart';
import 'package:vanshbook/pages/add_member_form.dart';
import 'package:vanshbook/widgets/add_member_BottomSheet.dart';

class empty_family_page extends StatefulWidget {
  const empty_family_page({Key? key}) : super(key: key);

  @override
  State<empty_family_page> createState() => _empty_family_pageState();
}

class _empty_family_pageState extends State<empty_family_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryPink,
        actions: [
          Icon(Icons.menu),
          Icon(Icons.share),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Image.asset("assets/tree_page.png",

      //   height: MediaQuery.of(context).size.height, fit: BoxFit.fitHeight,),
      // ),

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 7.0,
                ),
              ]),
          
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                height: 300,
                width: 300,
                child: Image.asset(
                  "assets/full_connections.png"
                )
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 200,
                child: Image.asset("assets/tree.png"),
              ),
            ]
          ),
        ),
      ),

      floatingActionButton: buildFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Material(
          color: lightPink.withOpacity(0.5),
          child: InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  child: Icon(Icons.grid_3x3),
                ),
                Text(""), // EMPTY CONTANER BELOW RAISED BUTTON
                Container(
                  height: 50,
                  child: Icon(Icons.grid_3x3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFab() {
    FloatingActionButton fab = FloatingActionButton(
        backgroundColor: buttonColor,
        child: Icon(Icons.home),
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.white,
            width: 5.0,
          ),
        ),
        tooltip: "Home",
        onPressed: () {
          
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
            ),
            builder: (context){
              return add_member_BottomSheet();
            });

          });

    return fab;
  }


 
}
