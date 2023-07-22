import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, this.hintText, this.suffixIcon});
  final String? hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width:  360,
        height: 50,
        child: TextField(
          autocorrect: true,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:  GoogleFonts.lato (
              fontSize:  14,
              fontWeight:  FontWeight.w400,
              height:  1.2,
              color:  Colors.grey,
            ),
            filled: true,
            fillColor: Colors.white70,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              borderSide: BorderSide(color: Colors.grey,),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),)
    );
  }
}
