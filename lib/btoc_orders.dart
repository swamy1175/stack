import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/add_order_details.dart';
import 'package:stack/custom_text_feild.dart';
import 'package:stack/orderview.dart';
import 'package:stack/return_drawer.dart';
import 'package:stack/self_delivery.dart';
import 'package:stack/utils.dart';

import 'address.dart';
import 'b2borders.dart';
import 'drawer.dart';
import 'my_b2b_customers.dart';
import 'my_websites.dart';

class B2COrders extends StatelessWidget {
  const B2COrders({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 40,),
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
            IconButton(onPressed: (){
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 10),
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
                          padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 10),
                          child: Text(
                            'Order No',
                            style:  GoogleFonts.lato (
                              fontSize:  15,
                              fontWeight:  FontWeight.w400,
                              height:  1.2,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 10),
                          child: CustomTextFeild(hintText: '-----',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 10),
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
                          padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 10),
                          child: CustomTextFeild(hintText: '',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 10),
                          child: Text(
                            'Customer email',
                            style:  GoogleFonts.lato (
                              fontSize:  15,
                              fontWeight:  FontWeight.w400,
                              height:  1.2,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 10),
                          child: CustomTextFeild(hintText: '',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 12),
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
                              ),child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.search),
                                Text(
                                  'Search',
                                  style:  GoogleFonts.lato (
                                    fontSize:  15,
                                    fontWeight:  FontWeight.w700,
                                    height:  1.2,
                                    color:  Color(0xff000000),
                                  ),
                                )
                              ],
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );

            }, icon: Icon(Icons.search,size: 30,color: Colors.black,)),
        InkWell(
          onTap: ()async{
            Future.delayed(Duration(seconds: 0)).then((value) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'PLEASE SELECT\nMATERIAL SENDING\nMETHOD',
                            textAlign: TextAlign.center,
                            style:  GoogleFonts.lato (
                              fontSize:  20,
                              fontWeight:  FontWeight.w900,
                              height:  1.2,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        InkWell(
                          onTap:()async{
                            await appExt.push(SelfDelivery(), context);
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Container(
                                width: 240,
                                height: 112,
                                decoration: BoxDecoration(

                                  border: Border.all(color: Color(0xff000000)),
                                  color: Color(0xff43b8c1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/Self Delivery.png'),
                                      Image.asset('assets/Group 119.png'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap:()async{
                            await appExt.push(AddOrderDetails(), context);
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Container(
                              width: 240,
                              height: 112,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xff43b8c1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset('assets/Group 121.png'),
                                    Image.asset('assets/Pickup Required.png'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );    });
          },
          child: Container(
            decoration:  BoxDecoration (
              border:  Border.all(color: Color(0xff000000)),
              color:  Color(0xff43b8c1),
              borderRadius:  BorderRadius.circular(30),
              boxShadow:  [
                BoxShadow(
                  color:  Color(0xff000000),
                  offset:  Offset(2, 2),
                  blurRadius:  0,
                ),
              ],
            ),
            child: Icon(Icons.add,color: Colors.black,),
              ),
        )
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                child: Text(
                  'B2C Orders',
                  style:  GoogleFonts.lato (
                    fontSize:  24,
                    fontWeight:  FontWeight.w900,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                child: Text(
                  'Found Total 238 Orders',
                  style:  GoogleFonts.lato (
                    fontSize:  14,
                    fontWeight:  FontWeight.w400,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
      SizedBox(height: 14,),
      Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: InkWell(
            onTap: ()async{
              await appExt.push(OrderView(),context);
            },
            child: Container(
              // group89bYq (0:146)
              width:  350,
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
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children:  [
                  Container(
                    // autogroupn62zeGD (GMhN6NzfDDAssmncPSn62Z)
                    width:  double.infinity,
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.end,
                      children:  [
                        Container(
                          // titlen7X (0:150)
                          margin:  EdgeInsets.fromLTRB(0, 0, 130, 0),
                          child:
                          Text(
                            'Stash NO',
                            style:  GoogleFonts.lato (
                              fontSize:  13,
                              fontWeight:  FontWeight.w500,
                              height:  1.2,
                              letterSpacing:  0.400000006,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupg2b7gCu (GMhNCdKFVdK5NjgadFg2B7)
                          margin:  EdgeInsets.fromLTRB(0, 0, 0, 10),
                          width:  122,
                          height:  20,
                          decoration:  BoxDecoration (
                            color:  Color(0xff00c667),
                            borderRadius:  BorderRadius.only (
                              topRight:  Radius.circular(14),
                            ),
                          ),
                          child:
                          Center(
                            child:
                            Text(
                              'Order Delivered',
                              style:  GoogleFonts.lato (
                                fontSize:  13,
                                fontWeight:  FontWeight.w900,
                                height:  1.2,
                                color:  Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // yourealmostthere8Ko (0:148)
                    child:
                    Text(
                      '#OBCE202305307270',
                      style:  GoogleFonts.lato (
                        fontSize:  16,
                        fontWeight:  FontWeight.w900,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    // autogroupta2rENq (GMhNJhyTD8Dugsgu1yTA2R)
                    child:
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // titleZvu (0:149)
                                      child:
                                      Text(
                                        'Invoice Ref',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.2,
                                          letterSpacing:  0.400000006,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // titleh9w (0:151)
                                      child:
                                      Text(
                                        'OBCM2073664992',
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // titleV3s (0:152)
                                      child:
                                      Text(
                                        'Order Date',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.2,
                                          letterSpacing:  0.400000006,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // titleDe5 (0:153)
                                      child:
                                      Text(
                                        '2023-10-22',
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      // titleQwX (0:156)
                                      'Customer',
                                      style:  GoogleFonts.lato (
                                        fontSize:  13,
                                        fontWeight:  FontWeight.w500,
                                        height:  1.2,
                                        letterSpacing:  0.400000006,
                                        color:  Color(0xff000000),
                                      ),
                                    ),
                                    Container(
                                      // titlek8D (0:157)
                                      child:
                                      Text(
                                        'AshrafHussain',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w900,
                                          height:  1.2,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    // autogroupbqhtgGm (GMhNYXukKJMEBQc4GJBQhT)
                    width:  double.infinity,
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // title1pq (0:154)
                            child:
                            Text(
                              'Kuwait',
                              style:  GoogleFonts.lato (
                                fontSize:  13,
                                fontWeight:  FontWeight.w900,
                                height:  1.2,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              // titlewiV (0:155)
                              'Kuwait',
                              style:  GoogleFonts.lato (
                                fontSize:  13,
                                fontWeight:  FontWeight.w500,
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
    ),
          ),
      ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Container(
                  // group89bYq (0:146)
                  width:  350,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children:  [
                        Container(
                          // autogroupn62zeGD (GMhN6NzfDDAssmncPSn62Z)
                          width:  double.infinity,
                          child:
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:  [
                              Container(
                                // titlen7X (0:150)
                                margin:  EdgeInsets.fromLTRB(0, 0, 130, 0),
                                child:
                                Text(
                                  'Stash NO',
                                  style:  GoogleFonts.lato (
                                    fontSize:  13,
                                    fontWeight:  FontWeight.w500,
                                    height:  1.2,
                                    letterSpacing:  0.400000006,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupg2b7gCu (GMhNCdKFVdK5NjgadFg2B7)
                                margin:  EdgeInsets.fromLTRB(0, 0, 0, 10),
                                width:  122,
                                height:  20,
                                decoration:  BoxDecoration (
                                  color:  Color(0xff00c667),
                                  borderRadius:  BorderRadius.only (
                                    topRight:  Radius.circular(14),
                                  ),
                                ),
                                child:
                                Center(
                                  child:
                                  Text(
                                    'Order Delivered',
                                    style:  GoogleFonts.lato (
                                      fontSize:  13,
                                      fontWeight:  FontWeight.w900,
                                      height:  1.2,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // yourealmostthere8Ko (0:148)
                          child:
                          Text(
                            '#OBCE202305307270',
                            style:  GoogleFonts.lato (
                              fontSize:  16,
                              fontWeight:  FontWeight.w900,
                              height:  1.2,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          // autogroupta2rENq (GMhNJhyTD8Dugsgu1yTA2R)
                          child:
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:  [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // titleZvu (0:149)
                                            child:
                                            Text(
                                              'Invoice Ref',
                                              style:  GoogleFonts.lato (
                                                fontSize:  13,
                                                fontWeight:  FontWeight.w500,
                                                height:  1.2,
                                                letterSpacing:  0.400000006,
                                                color:  Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // titleh9w (0:151)
                                            child:
                                            Text(
                                              'OBCM2073664992',
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
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // titleV3s (0:152)
                                            child:
                                            Text(
                                              'Order Date',
                                              style:  GoogleFonts.lato (
                                                fontSize:  13,
                                                fontWeight:  FontWeight.w500,
                                                height:  1.2,
                                                letterSpacing:  0.400000006,
                                                color:  Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // titleDe5 (0:153)
                                            child:
                                            Text(
                                              '2023-10-22',
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
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            // titleQwX (0:156)
                                            'Customer',
                                            style:  GoogleFonts.lato (
                                              fontSize:  13,
                                              fontWeight:  FontWeight.w500,
                                              height:  1.2,
                                              letterSpacing:  0.400000006,
                                              color:  Color(0xff000000),
                                            ),
                                          ),
                                          Container(
                                            // titlek8D (0:157)
                                            child:
                                            Text(
                                              'AshrafHussain',
                                              style:  GoogleFonts.lato (
                                                fontSize:  13,
                                                fontWeight:  FontWeight.w900,
                                                height:  1.2,
                                                color:  Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          // autogroupbqhtgGm (GMhNYXukKJMEBQc4GJBQhT)
                          width:  double.infinity,
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // title1pq (0:154)
                                  child:
                                  Text(
                                    'Kuwait',
                                    style:  GoogleFonts.lato (
                                      fontSize:  13,
                                      fontWeight:  FontWeight.w900,
                                      height:  1.2,
                                      color:  Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    // titlewiV (0:155)
                                    'Kuwait',
                                    style:  GoogleFonts.lato (
                                      fontSize:  13,
                                      fontWeight:  FontWeight.w500,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
