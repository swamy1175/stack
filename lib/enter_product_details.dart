import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/custom_text_feild.dart';

class EnterProductDetails extends StatelessWidget {
  const EnterProductDetails({super.key});

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
                    'ENTER PRODUCT DETAILS',
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
                    'Product Code',
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
                    'Product Name',
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
                    'SKU',
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
                    'UPC',
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
                    'Product Category',
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
                    'UOM',
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
                    'Lenght',
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
                    'Width',
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
                    'Height',
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
                    'Volume',
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
                    'Weight',
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
                    'Price',
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
