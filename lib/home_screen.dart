import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/account_with_stash.dart';
import 'package:stack/address.dart';
import 'package:stack/b2borders.dart';
import 'package:stack/btoc_orders.dart';
import 'package:stack/custom_text_feild.dart';
import 'package:stack/drawer.dart';
import 'package:stack/my_b2b_customers.dart';
import 'package:stack/my_websites.dart';
import 'package:stack/return_drawer.dart';
import 'package:stack/saledata_model.dart';
import 'package:stack/utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List namesList = ['Total','Weekly','Total','Present'];

  List iconsList = ['assets/Group 39.png','assets/Group 42.png','assets/Group 47.png','assets/Vector.png'];

  bool b2cBoolean = true;
  bool b2bBoolean = false;
  bool returnBoolean = false;
  bool exchangeBoolean = false;

  @override
  Widget build(BuildContext context) {
    TooltipBehavior _tooltipBehavior = TooltipBehavior();
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 2,
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
              Align(
                alignment: Alignment.topRight,
                child: ClipOval(
                  child: CircleAvatar(
                    radius: 25,
                    child: Image.asset(
                    'assets/artist.jpg',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.width / 3.6,
                      width: MediaQuery.of(context).size.width / 3.6,
                    ),
                  ),
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
                      await appExt.push(AccountWithStash(), context);
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
            padding: const EdgeInsets.all(4.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(
                height: 220,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: iconsList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              // item1uNM (1:272)
                              padding: EdgeInsets.fromLTRB(16.5, 12, 15.5, 20),
                              width: 145,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff707070)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // iconBKs (1:281)
                                    margin: EdgeInsets.fromLTRB(24.5, 0, 22.5, 7),
                                    padding: EdgeInsets.fromLTRB(15, 15, 13.04, 13),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff17171a)),
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(21),
                                    ),
                                    child: Center(
                                      // group415AM (1:283)
                                      child: SizedBox(
                                        width: 30.96,
                                        height: 31,
                                        child: Image.asset(iconsList[index]),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // totalKqP (1:275)
                                          margin: EdgeInsets.fromLTRB(0, 0, 3, 3),
                                          child: Text(
                                            namesList[index],
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.lato(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                              height: 1.2,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // orderswithstash1iD (1:276)
                                          'Orders With Stash',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.lato(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2,
                                            color: Color(0xff2e354c),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // labelwLy (1:277)
                                    margin: EdgeInsets.fromLTRB(9.5, 0, 8.5, 0),
                                    width: double.infinity,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13.5),
                                    ),
                                    child: Container(
                                      // group151G8M (1:278)
                                      decoration: BoxDecoration(
                                        color: Color(0xffbadfdc),
                                        borderRadius: BorderRadius.circular(13.5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '217',
                                          style: GoogleFonts.lato(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Group 82.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Order Snapshot',
                            style: GoogleFonts.lato(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              height: 1.2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'PROCESSING',
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  letterSpacing: 0.400000006,
                                  color: Color(0xff867676),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  // title9im (1:512)
                                  '432',
                                  style: GoogleFonts.lato(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w900,
                                    height: 1.2,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // titleEVK (1:515)
                                margin: EdgeInsets.fromLTRB(0, 1, 5, 0),
                                child: Text(
                                  'DISPATCHED',
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2,
                                    letterSpacing: 0.400000006,
                                    color: Color(0xff867676),
                                  ),
                                ),
                              ),
                              Text(
                                // titlekCm (1:516)
                                '2',
                                style: GoogleFonts.lato(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w900,
                                  height: 1.2,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // rectangle116PmX (1:509)
                                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                width: 106,
                                height: 17,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  color: Color(0xff000000),
                                ),
                              ),
                              Center(
                                  // titlevFf (1:565)
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 0.5, 0, 0),
                                      child: Text(
                                        '%67',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lato(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w900,
                                          height: 1.2,
                                          color: Color(0xff000000),
                                        ),
                                      )))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.2000000817,
                        letterSpacing: 0.5,
                        color: Color(0xff959595),
                      ),
                      children: [
                        TextSpan(
                          text: 'Percentage of completed (',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                            letterSpacing: 0.5,
                            color: Color(0xff959595),
                          ),
                        ),
                        TextSpan(
                          text: 'Delivered',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                            letterSpacing: 0.5,
                            color: Color(0xff43b8c1),
                          ),
                        ),
                        TextSpan(
                          text: ') orders received.',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                            letterSpacing: 0.5,
                            color: Color(0xff959595),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Out of stock details',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    height: 1.2,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total No of SKUs with 0 qty',
                      style: GoogleFonts.lato(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                        letterSpacing: 0.400000006,
                        color: Color(0xff000000),
                      ),
                    ),
                    Text(
                        // titleEKw (1:327)
                        '156',
                        style: GoogleFonts.lato(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                          height: 1.2,
                          color: Color(0xff000000),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ongoing Storage Charges',
                        style: GoogleFonts.lato(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                          letterSpacing: 0.400000006,
                          color: Color(0xff000000),
                        )),
                    Text(
                        // titleQtd (1:330)
                        'KWD 12.000',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.lato(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                          height: 1.2,
                          color: Color(0xff000000),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Billing Preview',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    height: 1.2,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ongoing Storage Charges',
                      style: GoogleFonts.lato(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                        letterSpacing: 0.400000006,
                        color: Color(0xff000000),
                      ),
                    ),
                    Text(
                        // titleEKw (1:327)
                        'KWD 42.000',
                        style: GoogleFonts.lato(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                          height: 1.2,
                          color: Colors.red,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ongoing Service Chargesa',
                        style: GoogleFonts.lato(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                          letterSpacing: 0.400000006,
                          color: Color(0xff000000),
                        )),
                    Text(
                        // titleQtd (1:330)
                        'KWD 42.000',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.lato(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                          height: 1.2,
                          color: Colors.red,
                        )),
                  ],
                ),
              ),
            Center(
              child: Text(
                  'Yearly orders graph overview',
                  style:  GoogleFonts.lato (
                    fontSize:  24,
                    fontWeight:  FontWeight.w900,
                    height:  1.2,
                    color:  Color(0xff000000),
                  )),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                InkWell(
                  onTap: ()async{
                   setState(() {
                     b2cBoolean=true;
                     b2bBoolean=false;
                     exchangeBoolean=false;
                     returnBoolean=false;
                   });
                  },
                  child: Container(
                    width: 76.1,
                  height: 31,
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
              ),
            child:
            Center(
              child:
              Text(
                  'B2C',
                  textAlign:  TextAlign.center,
                  style:  GoogleFonts.lato (
                    fontSize:  12,
                    fontWeight:  FontWeight.w900,
                    height:  1.3289999962,
                    color:  Color(0xff000000),
                  ),
              ),
            ),
        ),
                ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        b2cBoolean=false;
                        b2bBoolean=true;
                        exchangeBoolean=false;
                        returnBoolean=false;
                      });
                    },
                    child: Container(
                      // group71yjs (1:424)
                      width:  76.1,
                      height:  31,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xff000000)),
                        color:  Color(0xffffffff),
                        borderRadius:  BorderRadius.circular(4),
                        boxShadow:  [
                          BoxShadow(
                            color:  Color(0xff000000),
                            offset:  Offset(2, 2),
                            blurRadius:  0,
                          ),
                        ],
                      ),
                      child:
                      Center(
                        child:
                        Text(
                          'B2B',
                          textAlign:  TextAlign.center,
                          style:  GoogleFonts.lato (
                            fontSize:  12,
                            fontWeight:  FontWeight.w900,
                            height:  1.3289999962,
                            color:  Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: ()async{
                      setState(() {
                        b2cBoolean=false;
                        b2bBoolean=false;
                        exchangeBoolean=false;
                        returnBoolean=true;
                      });

                    },
                    child: Container(
                      // group71yjs (1:424)
                      width:  76.1,
                      height:  31,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xff000000)),
                        color:  Color(0xffffffff),
                        borderRadius:  BorderRadius.circular(4),
                        boxShadow:  [
                          BoxShadow(
                            color:  Color(0xff000000),
                            offset:  Offset(2, 2),
                            blurRadius:  0,
                          ),
                        ],
                      ),
                      child:
                      Center(
                        child:
                        Text(
                          'RETURN',
                          textAlign:  TextAlign.center,
                          style:  GoogleFonts.lato (
                            fontSize:  12,
                            fontWeight:  FontWeight.w900,
                            height:  1.3289999962,
                            color:  Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: ()async{
                      print('ssss');
                      setState(() {
                        b2cBoolean=false;
                        b2bBoolean=false;
                        exchangeBoolean=true;
                        returnBoolean=false;
                      });
                    },
                    child: Container(
              // group71yjs (1:424)
              width:  76.1,
              height:  31,
              decoration:  BoxDecoration (
                    border:  Border.all(color: Color(0xff000000)),
              color:  Color(0xffffffff),
              borderRadius:  BorderRadius.circular(4),
              boxShadow:  [
                BoxShadow(
                    color:  Color(0xff000000),
                    offset:  Offset(2, 2),
                    blurRadius:  0,
                ),
              ],
            ),
            child:
            Center(
              child:
              Text(
                'EXCHANGE',
                textAlign:  TextAlign.center,
                style:  GoogleFonts.lato (
                    fontSize:  12,
                    fontWeight:  FontWeight.w900,
                    height:  1.3289999962,
                    color:  Color(0xff000000),
                ),
              ),
            ),
        ),
                  ),
                ],
              ),
                  b2cBoolean ? B2C(_tooltipBehavior) : b2bBoolean ? B2B(_tooltipBehavior) 
                      : returnBoolean ? Return(_tooltipBehavior): Exchange(_tooltipBehavior),
                  Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Total Orders',
                      style:  GoogleFonts.lato (
                        fontSize:  13,
                        fontWeight:  FontWeight.w500,
                        height:  1.2,
                        letterSpacing:  0.400000006,
                        color:  Color(0xff000000),
                      ),
                    ),
                    Text(
                      '217',
                      textAlign:  TextAlign.center,
                      style:  GoogleFonts.lato (
                        fontSize:  19,
                        fontWeight:  FontWeight.w900,
                        height:  1.2,
                        color:  Color(0xff000000),
                      )),
                  ],
                ),
              ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Orders',
                      style:  GoogleFonts.lato (
                        fontSize:  24,
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
                ]),
          ),
        ));
  }
}

Widget B2C(TooltipBehavior _tooltipBehavior){
  return SfCartesianChart(
    primaryXAxis: CategoryAxis(),
    tooltipBehavior: _tooltipBehavior,
    series: <LineSeries<SalesData, String>>[
      LineSeries<SalesData, String>(
          dataSource:  <SalesData>[
            SalesData(1, 9),
            SalesData(2, 20),
            SalesData(3, 20),
            SalesData(4, 30),
            SalesData(5, 40),
            SalesData(6, 50),
            SalesData(7, 40),
            SalesData(8, 60),
            SalesData(9, 30),
            SalesData(10, 30),
            SalesData(11, 50),
            SalesData(12, 30),
          ],
          xValueMapper: (SalesData sales, _) => sales.number.toString(),
          yValueMapper: (SalesData sales, _) => sales.numberOfStudents,
          color: Colors.yellow,
          // Enable data label
          dataLabelSettings: DataLabelSettings(isVisible: true)
      )
    ],
  );
}
Widget B2B(TooltipBehavior _tooltipBehavior){
  return SfCartesianChart(
    primaryXAxis: CategoryAxis(),
    backgroundColor: Colors.blue,
    tooltipBehavior: _tooltipBehavior,
    series: <LineSeries<SalesData, String>>[
      LineSeries<SalesData, String>(
          dataSource:  <SalesData>[
            SalesData(1, 9),
            SalesData(2, 20),
            SalesData(3, 20),
            SalesData(4, 30),
            SalesData(5, 40),
            SalesData(6, 50),
            SalesData(7, 40),
            SalesData(8, 60),
            SalesData(9, 30),
            SalesData(10, 30),
            SalesData(11, 50),
            SalesData(12, 30),
          ],
          xValueMapper: (SalesData sales, _) => sales.number.toString(),
          yValueMapper: (SalesData sales, _) => sales.numberOfStudents,
          color: Colors.red,
          // Enable data label
          dataLabelSettings: DataLabelSettings(isVisible: true)
      )
    ],
  );
}
Widget Return(TooltipBehavior _tooltipBehavior){
  return SfCartesianChart(
    primaryXAxis: CategoryAxis(),
    backgroundColor: Colors.red,
    tooltipBehavior: _tooltipBehavior,
    series: <LineSeries<SalesData, String>>[
      LineSeries<SalesData, String>(
          dataSource:  <SalesData>[
            SalesData(1, 9),
            SalesData(2, 20),
            SalesData(3, 20),
            SalesData(4, 30),
            SalesData(5, 40),
            SalesData(6, 50),
            SalesData(7, 40),
            SalesData(8, 60),
            SalesData(9, 30),
            SalesData(10, 30),
            SalesData(11, 50),
            SalesData(12, 30),
          ],
          xValueMapper: (SalesData sales, _) => sales.number.toString(),
          yValueMapper: (SalesData sales, _) => sales.numberOfStudents,
          color: Colors.green,
          // Enable data label
          dataLabelSettings: DataLabelSettings(isVisible: true)
      )
    ],
  );
}
Widget Exchange(TooltipBehavior _tooltipBehavior){
  return SfCartesianChart(
    primaryXAxis: CategoryAxis(),
    backgroundColor: Colors.green,
    tooltipBehavior: _tooltipBehavior,
    series: <LineSeries<SalesData, String>>[
      LineSeries<SalesData, String>(
          dataSource:  <SalesData>[
            SalesData(1, 9),
            SalesData(2, 20),
            SalesData(3, 20),
            SalesData(4, 30),
            SalesData(5, 40),
            SalesData(6, 50),
            SalesData(7, 40),
            SalesData(8, 60),
            SalesData(9, 30),
            SalesData(10, 30),
            SalesData(11, 50),
            SalesData(12, 30),
          ],
          xValueMapper: (SalesData sales, _) => sales.number.toString(),
          yValueMapper: (SalesData sales, _) => sales.numberOfStudents,
          color: Colors.pink,
          // Enable data label
          dataLabelSettings: DataLabelSettings(isVisible: true)
      )
    ],
  );
}