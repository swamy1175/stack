import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/edit_b2c_orders.dart';
import 'package:stack/utils.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Center(
                child: Text(
                  'Stash',
                  style: GoogleFonts.anton(
                    fontSize: 33,
                    fontWeight: FontWeight.w400,
                    height: 1.5075,
                    color: Color(0xff43b8c1),
                  ),
                )),
            InkWell(
              onTap: ()async{
                await appExt.push(EditB2COrders(), context);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                  color: Color(0xff43b8c1),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000),
                      offset: Offset(2, 2),
                      blurRadius: 0,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.mode_edit_outlined,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
              'Order View',
              style:  GoogleFonts.lato (
                fontSize:  20,
                fontWeight:  FontWeight.w900,
                height:  1.2,
                color:  Color(0xff000000),
              ),
      ),
        ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ORDER #OBCE202305307270 2023-05-30',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w400,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Order Information',
                  style:  GoogleFonts.lato (
                    fontSize:  20,
                    fontWeight:  FontWeight.w900,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'Stash Order Number',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                    Text(
                      ':OBCE202305307270',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(thickness: 1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'E-commerce Shop Name',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                    Text(
                      ':demo UPayments',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'E-commerce Shop Name',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                    Text(
                      ':ss shop',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'E-commerce Order Number',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                    Text(
                      ':35742',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'Date',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                    Text(
                      ':22/10/2022',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'Order Amount',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                    Text(
                      ':1341',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      'Payment Method',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                    Text(
                      ':Cash',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Customer Information',
                  style:  GoogleFonts.lato (
                    fontSize:  20,
                    fontWeight:  FontWeight.w900,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'Customer',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  Text(
                    ':OBCE202305307270',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ],
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'Address',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  Text(
                    ':demo UPayments',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ],
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ),          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'City',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  Text(
                    ':ss shop',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ],
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'Region',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  Text(
                    ':251022',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ],
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: Divider(thickness: 1,),
          ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'Delivery Date',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  Text(
                    ':22/10/2022',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ],
              ),
          ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0,left: 8),
          child: Divider(thickness: 1,),
        ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'Order Amount',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  Text(
                    ':1341',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ],
              ),
          ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0,left: 8),
        child: Divider(thickness: 1,),
      ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'Payment Method',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  Text(
                    ':Cash',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ],
              ),
          ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0,left: 8),
        child: Divider(thickness: 1,),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
              width:  360,
              height:  150,
              decoration:  BoxDecoration (
                  border:  Border.all(color: Color(0xff000000)),
              color:  Color(0xffffffff),
              borderRadius:  BorderRadius.circular(15),
              boxShadow:  [
                BoxShadow(
                  color:  Color(0xff000000),
                  offset:  Offset(2, 2),
                  blurRadius:  0,
                ),
              ],
        ),
        child:
        Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children:  [
                Container(
                  // autogroupra9bmj3 (HkctaHgGd11kKvCv4rRA9b)
                  width:  double.infinity,
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children:  [
                        Container(
                          // yourealmosttherehsb (1:202)
                          child:
                          Text(
                            'Test Product 30052023',
                            style:  GoogleFonts.lato (
                              fontSize:  16,
                              fontWeight:  FontWeight.w900,
                              height:  1.2,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroup4thsRHo (HkctMiCtmi7fjaU9fh4ths)
                          margin:  EdgeInsets.fromLTRB(0, 0, 42, 2),
                          width:  double.infinity,
                          child:
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                // titlexHj (1:203)
                                margin:  EdgeInsets.fromLTRB(0, 0, 171, 0),
                                child:
                                Text(
                                  'SKU',
                                  style:  GoogleFonts.lato (
                                    fontSize:  13,
                                    fontWeight:  FontWeight.w500,
                                    height:  1.2,
                                    letterSpacing:  0.400000006,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // title57T (1:205)
                                'QTY orderd',
                                style:  GoogleFonts.lato (
                                  fontSize:  13,
                                  fontWeight:  FontWeight.w500,
                                  height:  1.2,
                                  letterSpacing:  0.400000006,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouphdvmp53 (HkctSsixNAFzXB5NuRhdvM)
                          margin:  EdgeInsets.fromLTRB(0, 0, 106, 0),
                          width:  double.infinity,
                          child:
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                // titleYFw (1:204)
                                margin:  EdgeInsets.fromLTRB(0, 0, 67, 0),
                                child:
                                Text(
                                  'OBCM202212292319',
                                  style:  GoogleFonts.lato (
                                    fontSize:  13,
                                    fontWeight:  FontWeight.w900,
                                    height:  1.2,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // titleFg9 (1:206)
                                '3',
                                style:  GoogleFonts.lato(
                                  fontSize:  13,
                                  fontWeight:  FontWeight.w900,
                                  height:  1.2,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // line131bk1 (1:209)
                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 9),
                  width:  double.infinity,
                  height:  1,
                  decoration:  BoxDecoration (
                    color:  Color(0xff000000),
                  ),
                ),
                Container(
                  // titlek77 (1:208)
                  margin:  EdgeInsets.fromLTRB(19, 0, 0, 0),
                  child:
                  Text(
                    'QTY delivered',
                    style:  GoogleFonts.lato (
                      fontSize:  13,
                      fontWeight:  FontWeight.w500,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // titlefjs (1:207)
                  margin:  EdgeInsets.fromLTRB(19, 0, 0, 0),
                  child:
                  Text(
                    '4',
                    style:  GoogleFonts.lato (
                      fontSize:  13,
                      fontWeight:  FontWeight.w900,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
              ],
        ),
        ),
      ),
        ],
      ),
            ),
          )),
    );
  }
}
