import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/custom_text_feild.dart';

Future<dynamic> SearchDialog({context,homeController,}){
  return showDialog(
    context: context,
    builder: (BuildContext context) => Scaffold(
      backgroundColor: Colors.white54,
      body:SizedBox(
        height: 400,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
              child: Text(
                'Search',
                style:  GoogleFonts.lato (
                  fontSize:  20,
                  fontWeight:  FontWeight.w900,
                  height:  1.2,
                  color:  Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
              child: Text(
                'Customer Name',
                style:  GoogleFonts.lato (
                  fontSize:  15,
                  fontWeight:  FontWeight.w400,
                  height:  1.2,
                  color:  Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
              child: CustomTextFeild(hintText: '05/10/223',),
            ),
          ],
        ),
      ),
    ),
  );
}
