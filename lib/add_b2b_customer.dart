import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/custom_text_feild.dart';

class AddB2BCustomer extends StatelessWidget {
  const AddB2BCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
                Padding(
                  padding: const EdgeInsets.only(right: 14.0,left: 14,bottom: 10),
                  child: Text(
                    'Add B2b CUSTOMER',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w800,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                  child: Text(
                    'Name',
                    style:  GoogleFonts.lato (
                      fontSize:  14,
                      fontWeight:  FontWeight.w800,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 15),
                  child: CustomTextFeild(hintText: '-------',),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                  child: Text(
                    'Country',
                    style:  GoogleFonts.lato (
                      fontSize:  14,
                      fontWeight:  FontWeight.w800,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 15),
                  child: CustomTextFeild(hintText: 'Select',suffixIcon: Icon(Icons.arrow_forward_ios),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                  child: Text(
                    'City',
                    style:  GoogleFonts.lato (
                      fontSize:  14,
                      fontWeight:  FontWeight.w800,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 15),
                  child: CustomTextFeild(hintText: '-------',),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                  child: Text(
                    'Address',
                    style:  GoogleFonts.lato (
                      fontSize:  14,
                      fontWeight:  FontWeight.w800,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 15),
                  child: CustomTextFeild(hintText: '------',),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                  child: Text(
                    'Phone',
                    style:  GoogleFonts.lato (
                      fontSize:  14,
                      fontWeight:  FontWeight.w800,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 15),
                  child: CustomTextFeild(hintText: '-----',),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                  child: Text(
                    'Email',
                    style:  GoogleFonts.lato (
                      fontSize:  14,
                      fontWeight:  FontWeight.w800,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 15),
                  child: CustomTextFeild(hintText: '-----',),
                ), Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 10,bottom: 12,top: 12),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      width: 360,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xff000000)),
                        color:  Color(0xff43b8c1),
                        borderRadius:  BorderRadius.circular(4),
                        boxShadow:  [
                          BoxShadow(
                            color:  Color(0xff000000),
                            offset:  Offset(2, 2),
                            blurRadius:  0,
                          ),
                        ],
                      ),child: Center(child: Text(
                      'Submit',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w700,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
