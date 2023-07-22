import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/add_order_details.dart';
import 'package:stack/custom_text_feild.dart';
import 'package:stack/inbound_order_view.dart';
import 'package:stack/return_drawer.dart';
import 'package:stack/utils.dart';

import 'address.dart';
import 'b2borders.dart';
import 'btoc_orders.dart';
import 'drawer.dart';
import 'my_b2b_customers.dart';
import 'my_websites.dart';

class MyStashedInventory1 extends StatelessWidget {
  const MyStashedInventory1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 5,
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
                await appExt.push(AddOrderDetails(), context);
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
                  Icons.add,
                  color: Colors.black,
                ),
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
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                  child: Text(
                    'My Stashed Inventory',
                    style:  GoogleFonts.lato (
                      fontSize:  24,
                      fontWeight:  FontWeight.w900,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 15),
                  child: Text(
                    'Found Total 125 Inbounds',
                    style:  GoogleFonts.lato (
                      fontSize:  14,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                  child: Text(
                    'Order Number',
                    style:  GoogleFonts.lato (
                      fontSize:  14,
                      fontWeight:  FontWeight.w400,
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
                  padding: const EdgeInsets.only(right: 8.0,left: 12,bottom: 12,top: 12),
                  child: InkWell(
                    onTap: ()async{
                    },
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
                  padding: const EdgeInsets.only(left: 14.0,bottom: 4),
                  child: Text(
                    'PRODUCT LISTING',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w900,
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
                      await appExt.push(InBoundOrderView(), context);
                    },
                    child: Container(
                      width:  360,
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
                            // autogroupwmv79TT (Ci8SgyqxzVvSVMwbJEWMV7)
                            margin:  EdgeInsets.fromLTRB(140, 0, 0, 0),
                            width:  215,
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
                                'Material Received to Warehouse',
                                style:  GoogleFonts.lato (
                                  fontSize:  13,
                                  fontWeight:  FontWeight.w900,
                                  height:  1.2,
                                  color:  Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // titled7j (1:234)
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
                                  // yourealmostthereKmF (1:233)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                                  child:
                                  Text(
                                    '#IN202302011166',
                                    style:  GoogleFonts.lato (
                                      fontSize:  16,
                                      fontWeight:  FontWeight.w900,
                                      height:  1.2,
                                      color:  Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup8fkhRpH (Ci8SpyceEYyySzguvU8fkh)
                            child:
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 8),
                              child: Row(
                                children:  [
                                  Column(
                                    children: [
                                      Container(
                                        // titlemNM (1:235)
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
                                      Text(
                                        '2022-09-08',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w900,
                                          height:  1.2,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 80,),
                                  Column(
                                    children: [
                                      Text(
                                        // title5P3 (1:237)
                                        'Document type',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.2,
                                          letterSpacing:  0.400000006,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                      Text(
                                        'Inbound Order',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w900,
                                          height:  1.2,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14,),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: InkWell(
                    onTap: ()async{
                      await appExt.push(InBoundOrderView(), context);
                    },
                    child: Container(
                      width:  360,
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
                            // autogroupwmv79TT (Ci8SgyqxzVvSVMwbJEWMV7)
                            margin:  EdgeInsets.fromLTRB(140, 0, 0, 0),
                            width:  215,
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
                                'Material Received to Warehouse',
                                style:  GoogleFonts.lato (
                                  fontSize:  13,
                                  fontWeight:  FontWeight.w900,
                                  height:  1.2,
                                  color:  Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // titled7j (1:234)
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
                                  // yourealmostthereKmF (1:233)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                                  child:
                                  Text(
                                    '#IN202302011166',
                                    style:  GoogleFonts.lato (
                                      fontSize:  16,
                                      fontWeight:  FontWeight.w900,
                                      height:  1.2,
                                      color:  Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup8fkhRpH (Ci8SpyceEYyySzguvU8fkh)
                            child:
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 8),
                              child: Row(
                                children:  [
                                  Column(
                                    children: [
                                      Container(
                                        // titlemNM (1:235)
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
                                      Text(
                                        '2022-09-08',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w900,
                                          height:  1.2,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 80,),
                                  Column(
                                    children: [
                                      Text(
                                        // title5P3 (1:237)
                                        'Document type',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.2,
                                          letterSpacing:  0.400000006,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                      Text(
                                        'Inbound Order',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w900,
                                          height:  1.2,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14,),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: InkWell(
                    onTap: ()async{
                      await appExt.push(InBoundOrderView(), context);
                    },
                    child: Container(
                      width:  360,
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
                            // autogroupwmv79TT (Ci8SgyqxzVvSVMwbJEWMV7)
                            margin:  EdgeInsets.fromLTRB(140, 0, 0, 0),
                            width:  215,
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
                                'Material Received to Warehouse',
                                style:  GoogleFonts.lato (
                                  fontSize:  13,
                                  fontWeight:  FontWeight.w900,
                                  height:  1.2,
                                  color:  Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // titled7j (1:234)
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
                                  // yourealmostthereKmF (1:233)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                                  child:
                                  Text(
                                    '#IN202302011166',
                                    style:  GoogleFonts.lato (
                                      fontSize:  16,
                                      fontWeight:  FontWeight.w900,
                                      height:  1.2,
                                      color:  Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup8fkhRpH (Ci8SpyceEYyySzguvU8fkh)
                            child:
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 8),
                              child: Row(
                                children:  [
                                  Column(
                                    children: [
                                      Container(
                                        // titlemNM (1:235)
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
                                      Text(
                                        '2022-09-08',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w900,
                                          height:  1.2,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 80,),
                                  Column(
                                    children: [
                                      Text(
                                        // title5P3 (1:237)
                                        'Document type',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.2,
                                          letterSpacing:  0.400000006,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                      Text(
                                        'Inbound Order',
                                        style:  GoogleFonts.lato (
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w900,
                                          height:  1.2,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  )
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
      ),

    );
  }
}
