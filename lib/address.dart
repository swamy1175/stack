import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/return_drawer.dart';
import 'package:stack/utils.dart';

import 'b2borders.dart';
import 'btoc_orders.dart';
import 'drawer.dart';
import 'my_b2b_customers.dart';
import 'my_websites.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Stash',
              style: GoogleFonts.anton(
            fontSize: 33,
            fontWeight: FontWeight.w400,
            height: 1.5075,
            color: Color(0xff43b8c1),
              ),
            ),
          ],
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                      ))),
              SizedBox(height: 30,),
              ListTile(
                leading: Image.asset('assets/home.png'),
                title:  Text(
                  'Dashboard',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w500,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(),
              ),
              ListTile(
                leading: Image.asset('assets/b2c.png'),
                title:  Text(
                  'B2C Orders',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w500,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
                onTap: () async{
                  await appExt.push(B2COrders(), context);
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(),
              ),
              ListTile(
                leading: Image.asset('assets/b2b.png'),
                title:  Text(
                  'B2B Orders',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w500,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
                onTap: () async{
                  await appExt.push(B2BOrders(), context);
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset('assets/inventory.png'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title:  Text(
                    'Inventory',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w500,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(InventoryPage(), context);
                    Navigator.pop(context);
                  }),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset('assets/b2bcustomers.png'),
                  title:  Text(
                    'B2B Customers',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w500,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(MyB2bCustomers(), context);
                    Navigator.pop(context);
                  }),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset('assets/billing.png'),
                  title:  Text(
                    'Billing',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w500,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(Address(), context);
                    Navigator.pop(context);
                  }),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset('assets/returns.png'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title:  Text(
                    'Return & Exchanges',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w500,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(RunnerDrawer(), context);
                    Navigator.pop(context);
                  }),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset('assets/connect.png'),
                  title:  Text(
                    'Connect your Store',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w500,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(MyWebsites(), context);
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 30,bottom: 12),
                child: Text(
                  'Address',
                  style:  GoogleFonts.lato (
                    fontSize:  20,
                    fontWeight:  FontWeight.w900,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,bottom: 20),
                child: Text(
                  'Kuwait - Main Branch\nDhaka ST Tripoli Libya,\nLibyaPhone: +20100365584',
                  textAlign: TextAlign.start,
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w400,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 30,bottom: 12),
                child: Text(
                  'To',
                  style:  GoogleFonts.lato (
                    fontSize:  20,
                    fontWeight:  FontWeight.w900,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 30,bottom: 12),
                child: Text(
                  'DEMO ACCOUNT',
                  style:  GoogleFonts.lato (
                    fontSize:  20,
                    fontWeight:  FontWeight.w400,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30.0,bottom: 20),
                child: Text(
                  'Kuwait City, Kuwait\nPhone: +96566065488',
                  textAlign: TextAlign.start,
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w400,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,bottom: 20),
                child: Text(
                  'aInvoice: #AR/100054\nInvoice Date: 12-Oct-2022Due\nDate: 12-Oct-2022',
                  textAlign: TextAlign.start,
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w400,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    child: SizedBox(
                      width: 108,
                      height: 255,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff000000)),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 108,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border(
                                bottom: BorderSide(color: Colors.black)
                              )),
                              child: Center(
                                child: Text(
                                  'SERVICE \nDESCRIPTION',
                                  style:  GoogleFonts.lato (
                                    fontSize:  14,
                                    fontWeight:  FontWeight.w700,
                                    height:  1.2,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 91,
                              height: 41,
                              child: Text(
                                'Account Management Fee',
                                style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.6799999873,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),Align(
                    child: SizedBox(
                      width: 88,
                      height: 255,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff000000)),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 108,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black)
                                  )),
                              child: Center(
                                child: Text(
                                  'QUANTITY',
                                  style:  GoogleFonts.lato (
                                    fontSize:  14,
                                    fontWeight:  FontWeight.w700,
                                    height:  1.2,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '132',
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.6799999873,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    child: SizedBox(
                      width: 90,
                      height: 255,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff000000)),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 108,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black)
                                  )),
                              child: Center(
                                child: Text(
                                  'UNIT\nPRICE',
                                  style:  GoogleFonts.lato (
                                    fontSize:  14,
                                    fontWeight:  FontWeight.w700,
                                    height:  1.2,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '20\nSubtotal (LYD)\nVAT (LYD)\nTotal (LYD)',
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.6799999873,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    child: SizedBox(
                      width: 67,
                      height: 255,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff000000)),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 108,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black)
                                  )),
                              child: Center(
                                child: Text(
                                  'TOTAL',
                                  style:  GoogleFonts.lato (
                                    fontSize:  14,
                                    fontWeight:  FontWeight.w700,
                                    height:  1.2,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '20\n20.0\nVAT (LYD)\nTotal (LYD)',
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.6799999873,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 12,top: 12),
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
                      'Pay Invoice',
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
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 12),
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
                      'Save Pdf',
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
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 12),
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
                      'Print',
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
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Payment Method: Credit Card\nCard Type: MastercardNumber\nVerification: 598746325950',
                  textAlign: TextAlign.start,
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w400,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
