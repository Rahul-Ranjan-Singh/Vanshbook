import 'package:flutter/material.dart';
import 'package:vanshbook/constants.dart';
import 'package:vanshbook/pages/add_member_form.dart';
import 'package:vanshbook/pages/empty_family_page.dart';

class add_member_BottomSheet extends StatelessWidget {
  add_member_BottomSheet({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(12),
              alignment: Alignment.centerLeft,
              child: Text(
                "Choose an Action",
                style: TextStyle(
                  fontSize: 15,
                  color: textPink,
                ),
              ),
            ),
      
            SizedBox(height: 8,),
      
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                create_card("assets/father.png", "Add Father", context),
                create_card("assets/mother.png", "Add Mother", context),
                create_card("assets/brother.png", "Add Brother", context),
                create_card("assets/sister.png", "Add Sister", context),
                create_card("assets/son.png", "Add Son", context),
                create_card("assets/daughter.png", "Add Daughter", context),
                create_card("assets/husband.png", "Add Husband", context),
                create_card("assets/wife.png", "Add Wife", context),
                create_card("assets/vanshbook_logo2.png", "", context),
                create_card("assets/view_info.png", "View info", context),
                create_card("assets/edit_info.png", "Edit info", context),
                create_card("assets/remove.png", "View info", context),
              ],
            ),
      
          ],
        ),
      ),
    );
  }

  Widget create_card(String imgUrl, String text , BuildContext context){
    return Material(
                  
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => add_member_form())));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          imgUrl,
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(height: 8,),
                        Text(
                          text,
                          style: TextStyle(
                            fontSize: 14,
                            color: textPink,
                          ),
                        ),
                      ],
                    ),
                  ),
              );
  }

}