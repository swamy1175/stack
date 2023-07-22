import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/custom_text_feild.dart';

class NewOrder extends StatelessWidget {
  const NewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title:  Center(
            child: Text(
              'Stash',
              style: GoogleFonts.anton(
                fontSize: 33,
                fontWeight: FontWeight.w400,
                height: 1.5075,
                color: Color(0xff43b8c1),
              ),
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 10),
                  child: Text(
                    'New Order',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w900,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 15),
                  child: Text(
                    'ORDER DETAILS',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: Text(
                    'Order Date',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: Container(
                    height: 50,
                    width:  350,
                    decoration:  BoxDecoration (
                      color:  Color(0xffd9d9d9),
                      borderRadius:  BorderRadius.circular(4),
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '05/02/2023',
                        style:  GoogleFonts.lato (
                          fontSize:  15,
                          fontWeight:  FontWeight.w400,
                          height:  1.2,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: Text(
                    'Requested Delivery Date',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                  child: Container(
                    height: 50,
                    // autogroupnsooXKK (VXaSwVMHqLA7Dhz3ewnSoo)
                    width:  350,
                    decoration:  BoxDecoration (
                      border:  Border.all(color :Color(0x99000000)),
                      color:  Color(0x99ffffff),
                      borderRadius:  BorderRadius.circular(4),
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '05/02/2023',
                        style:  GoogleFonts.lato (
                          fontSize:  15,
                          fontWeight:  FontWeight.w400,
                          height:  1.2,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                  child: Text(
                    'Delivery Method',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 150,
                        decoration:  BoxDecoration (
                          border:  Border.all(color: Color(0xff43b8c1)),
                          color:  Color(0xffffffff),
                          borderRadius:  BorderRadius.circular(8),),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                      ),
                                      borderRadius: new BorderRadius.circular(10),
                                    ),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor: Colors.transparent,
                                      ),
                                      child: Checkbox(
                                        value: true,
                                        onChanged: (value){},
                                        activeColor: Colors.blue,
                                        checkColor: Colors.black,
                                        materialTapTargetSize: MaterialTapTargetSize.padded,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                              child: Text(
                                'Pick Up',
                                style:  GoogleFonts.lato (
                                  fontSize:  15,
                                  fontWeight:  FontWeight.w400,
                                  height:  1.2,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                  child: Text(
                    'Requsted Vehicle',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                  child:CustomTextFeild(hintText: 'Select',suffixIcon: Icon(Icons.arrow_forward_ios),)
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                  child: Text(
                    'Invoice #',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                    child:CustomTextFeild(hintText: 'dd/mm/yy',)
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                  child: Text(
                    'Expiry date will help us prioritize your order',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 10),
                  child: Text(
                    'CUSTOMER INFORMATION',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w900,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                  child: Text(
                    'Customer',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                    child:CustomTextFeild(hintText: 'Select',suffixIcon: Icon(Icons.arrow_forward_ios),)
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14,bottom: 8),
                      child: Text(
                        'Create a new customer',
                        style:  GoogleFonts.lato (
                          fontSize:  15,
                          fontWeight:  FontWeight.w400,
                          height:  1.2,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                    MaterialButton(onPressed: (){},child:   Padding(
                      padding: const EdgeInsets.only(right: 8.0,bottom: 8),
                      child: Text(
                        'HERE',
                        style:  GoogleFonts.lato (
                          fontSize:  15,
                          fontWeight:  FontWeight.w400,
                          height:  1.2,
                          color:  Colors.blueAccent,
                        ),
                      ),
                    ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
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
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                    child:CustomTextFeild(hintText: 'Select',)
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                  child: Text(
                    'Mobile #',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                    child:CustomTextFeild(hintText: 'Select',)
                ),

                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 10),
                  child: Text(
                    'ADDRESS INFORMATION',
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
                    'Country',
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
                  child: CustomTextFeild(hintText: 'Kuwait',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Governate',
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
                  child: CustomTextFeild(hintText: 'Alhamadi',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'City',
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
                  child: CustomTextFeild(hintText: '-----',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Special Instructions',
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
                  child: CustomTextFeild(hintText: 'Address',),
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
                      'Save',
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
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: Text(
                    'Expiry date will help us prioritize your order',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 20),
                  child: Text(
                    'ATTACH RELEVANT PURCHASE\nORDERS & INVOICES',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w900,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: Text(
                    'Attach PO/Invoices',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
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
                      'UPLOAD FILE',
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
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: Text(
                    'Product Information',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 10,bottom: 12,top: 12),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      width: 360,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Colors.black),
                        color:  Color(0xffffffff),
                        borderRadius:  BorderRadius.circular(4),
                        boxShadow:  [
                          BoxShadow(
                            color:  Color(0xff000000),
                            offset:  Offset(2, 2),
                            blurRadius:  0,
                          ),
                        ],
                      ),child: Center(child: Text(
                      'Add Product',
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
                      'UPLOAD FILE',
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
