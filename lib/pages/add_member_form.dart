import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:vanshbook/constants.dart';

class add_member_form extends StatefulWidget {
  const add_member_form({ Key? key }) : super(key: key);

  @override
  State<add_member_form> createState() => _add_member_formState();
}

class _add_member_formState extends State<add_member_form> {

  File? _image;

  _getFromCamera() async {
     XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.camera,
        maxWidth: 1800,
        maxHeight: 1800,
    );
    if (pickedFile != null) {
        setState(() {
        _image = File(pickedFile.path);
      });
    }
    else{
      print('User canceled the picker');
    }
  }

  _getFromGallery() async {
     XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxWidth: 1800,
        maxHeight: 1800,
    );
    if (pickedFile != null) {
        setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  _open_imagePick_bottom_sheet(BuildContext context){
    return showModalBottomSheet(
      context: context,
      builder: (context){
        return Container(
          height: 150,
          child: Column(
            children: [
              Material(
                child: InkWell(
                  onTap: (){
                    _getFromCamera();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Row(
                      children: [
                        Icon(Icons.camera_alt, size: 30,),
                        SizedBox(width: 20,),
                        Text("Camera",),
                      ],
                    ),
                  ),
                ),
              ),

              Material(
                child: InkWell(
                  onTap: (){
                    _getFromGallery();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Icon(Icons.image_rounded, size: 30,),
                        SizedBox(width: 20,),
                        Text("Gallery"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        );
      }
      
    );
  }

  Widget demoImageContainer(){
    return Material(
      child: InkWell(
        onTap: (){
          _open_imagePick_bottom_sheet(context);
        },
        child: Image.asset(
          "assets/demo_image.png",
          fit: BoxFit.cover,
          height: 100,
          width: 100,
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryPink,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, size:26,), color: Colors.white,
          onPressed: (){

          },
        ),

        title: Text(
          "Add Member",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),

            Container(
              child: _image != null ? 
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(150)),
                  child: Image.file(
                    _image!,
                    height: 150,
                    width: 150 ,
                    fit: BoxFit.cover,
                
                  ),
                ) : demoImageContainer() ,
            ),
          ],
        ),
      ),
    );
  }
}