import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/enter_product_details.dart';
import 'package:stack/return_drawer.dart';
import 'package:stack/utils.dart';

import 'address.dart';
import 'b2borders.dart';
import 'btoc_orders.dart';
import 'drawer.dart';
import 'my_b2b_customers.dart';
import 'my_websites.dart';

class InBoundOrderView extends StatefulWidget {
  const InBoundOrderView({super.key});

  @override
  State<InBoundOrderView> createState() => _InBoundOrderViewState();
}
bool isSelected = true;
bool isSelected1 = false;
class _InBoundOrderViewState extends State<InBoundOrderView> {
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
                await appExt.push(EnterProductDetails(), context);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Inbound Order View',
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
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(thickness: 1,),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: (){
                        setState(() {
                          isSelected = true;
                        });
                  },
                      child: Text(
                        'Inbound Order Details',
                        style:  GoogleFonts.lato (
                          fontWeight: FontWeight.bold,
                          fontSize:  16,
                          height:  1.2,
                          color:  Color(0xff000000),
                        ),)),
                  TextButton(onPressed: (){
                    setState(() {
                      isSelected = false;
                    });
                  },
                      child: Text(
                        'Attachments',
                        style:  GoogleFonts.lato (
                          fontWeight: isSelected ? FontWeight.normal : FontWeight.bold,
                          fontSize:  16,
                          height:  1.2,
                          color:  Color(0xff000000),
                        ),)),
                ],
              ),
              isSelected? inbound() : inbound1()
            ],
          ),
        ),
      )
    );
  }
}
Widget inbound() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 8),
            child: Divider(thickness: 1,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 8),
            child: SizedBox(
                width: 150,
                child: Divider(thickness: 3,color: Color(0xff43b8c1),)),
          ),
        ],
      ),
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
              'Stash Order Number                             :OBCE202305307270',
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
              'Date                                                                 :22/10/2023',
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
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Inbound Information',
          style:  GoogleFonts.lato (
            fontSize:  20,
            fontWeight:  FontWeight.w900,
            height:  1.2,
            color:  Color(0xff000000),
          ),
        ),
      ),
      SizedBox(height: 50,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text(
              'Inbound Recieved Date                             :--------',
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
              'Shipping Method                                          :PickUpMethod',
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
              'Order Status                                                   :Inbound in Progress',
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
              'Inbound Recieved Date                             :--------',
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
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width:  360,
            height:  100,
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
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
Widget inbound1() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 8),
            child: Divider(thickness: 1,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 180),
            child: SizedBox(
                width: 100,
                child: Divider(thickness: 3,color: Color(0xff43b8c1),)),
          ),
        ],
      ),
     Padding(
       padding: const EdgeInsets.only(right: 8.0,left: 8,top: 30,bottom: 50),
       child: Row(
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 'Packing List',
                 style:  GoogleFonts.lato (
                   fontWeight: FontWeight.bold,
                   fontSize:  16,
                   height:  1.2,
                   color:  Color(0xff000000),
                 ),),
               SizedBox(
                 width: 250,
                 child: Padding(
                   padding: const EdgeInsets.only(right: 8.0,left: 8),
                   child: Divider(thickness: 1,),
                 ),
               ),
               Text(
                 'Inbound Reports',
                 style:  GoogleFonts.lato (
                   fontSize:  16,
                   height:  1.2,
                   color:  Color(0xff000000),
                 ),),
             ],
           ),
           Container(
             width: 80,
             height: 80,
             decoration: BoxDecoration(
               boxShadow: [
                 BoxShadow(
                   color: Color(0xff000000),
                   offset: Offset(2, 2),
                   blurRadius: 0,
                 ),
               ],
             ),
             child: MaterialButton(
               color: Color(0xff43b8c1),
               onPressed: (){},child: Icon(Icons.file_download_outlined,size: 30,),),
           )
         ],
       ),
     ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width:  360,
          height:  100,
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
            ],
          ),
        ),
      ),


    ],
  );
}

