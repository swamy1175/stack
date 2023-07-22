import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/custom_text_feild.dart';

class InventoryTracking extends StatelessWidget {
  const InventoryTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon:Icon(Icons.arrow_back,color: Colors.black,)),
                    SizedBox(width: 100,),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                child: CustomTextFeild(hintText: 'Order No',suffixIcon: Icon(Icons.arrow_forward_ios),),
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
                padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                child: CustomTextFeild(hintText: '-----',),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 12),
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
                    'Search',
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
                padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 20,top: 20),
                child: Text(
                  'Inventory Tracking',
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
                child: Center(
                  child: Container(
                    width: 360,
                    height: 164,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff000000)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000),
                          offset: Offset(2, 2),
                          blurRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // yourealmosttheredmF (1:429)
                          margin: EdgeInsets.fromLTRB(0, 0, 6, 2.5),
                          child: Text(
                            'T-SHORT Y (BLACK COLOR - SMALL SIZE)',
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              height: 1.2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogrouprvemx2q (CALQG7mHUzqvuzRf7drVem)
                          margin: EdgeInsets.fromLTRB(0, 0, 1.7, 6.99),
                          width: double.infinity,
                          height: 57.01,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupyaw1H57 (CALQUMutCTHH8gP7pcyAW1)
                                padding: EdgeInsets.fromLTRB(0, 17, 12.29, 6.01),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group56QfX (1:431)
                                      margin: EdgeInsets.fromLTRB(0, 0, 23, 0),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // titleYmj (1:432)
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                            child: Text(
                                              'ORDER NO',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2,
                                                letterSpacing: 0.400000006,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // titleGSq (1:433)
                                            'OBCM202212292319',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              height: 1.2,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group56Qow (1:435)
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // titleNVs (1:436)
                                            margin: EdgeInsets.fromLTRB(1, 0, 0, 2),
                                            child: Text(
                                              'ORDER DATE',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2,
                                                letterSpacing: 0.400000006,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // title6Rs (1:437)
                                            '2022-09-08',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              height: 1.2,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouptps9EY5 (CALQPHE1tTkdwViiWRtpS9)
                                width: 57.01,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff000000)),
                                  color: Color(0xff5fdae3),
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff000000),
                                      offset: Offset(2, 2),
                                      blurRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // qty9Q9 (1:451)
                                      left: 17.7119140625,
                                      top: 14.9997558594,
                                      child: Center(
                                        child: Align(
                                          child: SizedBox(
                                            width: 21,
                                            height: 12,
                                            child: Text(
                                              'QTY',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.lato(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w900,
                                                height: 1.2,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // ERb (1:452)
                                      left: 16.7119140625,
                                      top: 24.9997558594,
                                      child: Center(
                                        child: Align(
                                          child: SizedBox(
                                            width: 25,
                                            height: 17,
                                            child: Text(
                                              '367',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.lato(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                                height: 1.2,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupkaukjdF (CALQnX4J4VQ6UgTF5EkAuK)
                          width: double.infinity,
                          height: 34,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group565x1 (1:447)
                                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // titleDoK (1:448)
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                      child: Text(
                                        'TRANSACTION TYPE',
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          letterSpacing: 0.400000006,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // titleLN9 (1:449)
                                      'Outbound Order (B2C)',
                                      style: GoogleFonts.lato(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w900,
                                        height: 1.2,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group56gS1 (1:439)
                                margin: EdgeInsets.fromLTRB(0, 0, 39, 0),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // titleDwj (1:440)
                                      margin: EdgeInsets.fromLTRB(1, 0, 0, 2),
                                      child: Text(
                                        'SHIP TO',
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          letterSpacing: 0.400000006,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // titleLmT (1:441)
                                      '2022-09-08',
                                      style: GoogleFonts.lato(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w900,
                                        height: 1.2,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group56tY5 (1:443)
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // titleqCR (1:444)
                                      margin: EdgeInsets.fromLTRB(1, 0, 0, 2),
                                      child: Text(
                                        'SKU',
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          letterSpacing: 0.400000006,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // titleMRf (1:445)
                                      '181818',
                                      style: GoogleFonts.lato(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w900,
                                        height: 1.2,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
