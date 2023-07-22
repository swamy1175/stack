import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/custom_text_feild.dart';
import 'package:stack/return_drawer.dart';
import 'package:stack/utils.dart';

import 'address.dart';
import 'b2borders.dart';
import 'btoc_orders.dart';
import 'drawer.dart';
import 'my_b2b_customers.dart';
import 'my_websites.dart';

class SelfDelivery extends StatelessWidget {
  const SelfDelivery({super.key});

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
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // yourealmostthereA4D (1:145)
                          child:
                          Text(
                            '#IN202306211648',
                            style:  GoogleFonts.lato (
                              fontSize:  20,
                              fontWeight:  FontWeight.w900,
                              height:  1.2,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 46,
                          child: MaterialButton(
                              color: Color(0xff43b8c1),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),side: BorderSide(color: Colors.grey)),
                              onPressed: (){},
                              child: Text('Confirm Order',style:GoogleFonts.lato (
                                fontSize:  18,
                                fontWeight:  FontWeight.w400,
                                color:  Colors.black12,
                              ))),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
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
                                  'Self Delivery',
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
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 15),
                    child: Text(
                      'Please note wrong Selection of vehicle may cause delays in deliveries.',
                      style:  GoogleFonts.lato (
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 6),
                    child: Text(
                      'Self Delivery Date',
                      style:  GoogleFonts.lato (
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 6),
                    child: CustomTextFeild(hintText: '10/02/2023',),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 15),
                    child: Text(
                      'Same Day Delivery for all orders placed before 4PM.',
                      style:  GoogleFonts.lato (
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                    child: Text(
                      'POINT OF CONTACT',
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
                      'First Name',
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
                    child: CustomTextFeild(hintText: '------',),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
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
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                    child: CustomTextFeild(hintText: '------',),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
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
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
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
                      'Save and proceed not to loose any changes',
                      style:  GoogleFonts.lato (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 20,top: 20),
                    child: Text(
                      'ATTACH RELEVANT PACKING LIST',
                      style:  GoogleFonts.lato (
                        fontSize:  18,
                        fontWeight:  FontWeight.w800,
                        height:  1.2,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                    child: Text(
                      'Attach Packing List',
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                                      child: Text(
                                        'T-SHORT (BLACK COLOR - SMALL SIZE)',
                                        style:  GoogleFonts.lato (
                                          fontSize:  16,
                                          fontWeight:  FontWeight.w900,
                                          height:  1.2,
                                          color:  Color(0xff000000),
                                        ),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
/*
                              Column(
                                crossAxisAlignment:  CrossAxisAlignment.start,
                                children: [
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
*/
                              SizedBox(width: 120,),
                              IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,size: 30,)),
                              IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,size: 30,))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
