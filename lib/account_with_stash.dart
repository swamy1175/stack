import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/address.dart';
import 'package:stack/b2borders.dart';
import 'package:stack/btoc_orders.dart';
import 'package:stack/drawer.dart';
import 'package:stack/edit_product_details.dart';
import 'package:stack/my_b2b_customers.dart';
import 'package:stack/my_websites.dart';
import 'package:stack/return_drawer.dart';
import 'package:stack/saledata_model.dart';
import 'package:stack/utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AccountWithStash extends StatelessWidget {
  const AccountWithStash({super.key});

  @override
  Widget build(BuildContext context) {
    TooltipBehavior? _tooltipBehavior;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
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
                color: const Color(0xff43b8c1),
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
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ))),
              const SizedBox(height: 30,),
              ListTile(
                leading: Image.asset('assets/home.png'),
                title:  Text(
                  'Dashboard',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w500,
                    height:  1.2,
                    color:  const Color(0xff000000),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0,left: 8),
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
                    color:  const Color(0xff000000),
                  ),
                ),
                onTap: () async{
                  await appExt.push(const B2COrders(), context);
                  Navigator.pop(context);
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0,left: 8),
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
                    color:  const Color(0xff000000),
                  ),
                ),
                onTap: () async{
                  await appExt.push(const B2BOrders(), context);
                  Navigator.pop(context);
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset('assets/inventory.png'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title:  Text(
                    'Inventory',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w500,
                      height:  1.2,
                      color:  const Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(const InventoryPage(), context);
                    Navigator.pop(context);
                  }),
              const Padding(
                padding: EdgeInsets.only(right: 8.0,left: 8),
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
                      color:  const Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(const MyB2bCustomers(), context);
                    Navigator.pop(context);
                  }),
              const Padding(
                padding: EdgeInsets.only(right: 8.0,left: 8),
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
                      color:  const Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(const Address(), context);
                    Navigator.pop(context);
                  }),
              const Padding(
                padding: EdgeInsets.only(right: 8.0,left: 8),
                child: Divider(),
              ),
              ListTile(
                  leading: Image.asset('assets/returns.png'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title:  Text(
                    'Return & Exchanges',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w500,
                      height:  1.2,
                      color:  const Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(const RunnerDrawer(), context);
                    Navigator.pop(context);
                  }),
              const Padding(
                padding: EdgeInsets.only(right: 8.0,left: 8),
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
                      color:  const Color(0xff000000),
                    ),
                  ),
                  onTap: () async{
                    await appExt.push(const MyWebsites(), context);
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
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ACCOUNT WITH STASH',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'YEARLY AP INVOICE GRAPH OVERVIEW',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    height: 1.2,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              Center(
                  child: Container(
                      child: SfCartesianChart(
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
                                // Enable data label
                                dataLabelSettings: const DataLabelSettings(isVisible: true)
                            )
                          ]
                      )
                  )
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Total Orders',
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        height: 1.2,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '219',
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Container(
                  // autogroup2qedo4h (NEmyjzfJC523GZHx2w2qED)
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff000000)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      const BoxShadow(
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
                        // autogroupgs8hRbs (NEn1dmqiCssmGhAxn5Gs8H)
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupnydwku3 (NEmzAectBu86tm6XHzNyDw)
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          // yourealmosttherev4m (0:156)
                                          child: Text(
                                            'Invoice Number',
                                            style: GoogleFonts.lato(
                                              fontSize: 16,
                                              height: 1.2,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // yourealmosttherev4m (0:156)
                                        child: Text(
                                          '#38395837985973',
                                          style: GoogleFonts.lato(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            height: 1.2,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
/*
                                    Container(
                                      // autogroupbgyjr4u (NEmzKUhWGYLTnXJ79fbGyj)
                                      width: 122,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color(0xff00c667),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(14),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Order Delivered',
                                          style: GoogleFonts.lato(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w900,
                                            height: 1.2,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
*/
                                ],
                              ),
                            ),
                            Container(
                              // autogroup8phfqBj (NEmzU4HYVohmu3fDEi8PHf)
                              child: Padding(
                                padding: const EdgeInsets.only(left: 17.0,bottom: 10,top: 10,right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // titleMfs (0:157)
                                          child: Text(
                                            'Invoice Date',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2,
                                              letterSpacing: 0.400000006,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 40,),
                                        Container(
                                          // titlerFF (0:158)
                                          child: Text(
                                            'Ar Invoice Service',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              height: 1.2,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10,),
                                        Container(
                                          // titleG29 (0:159)
                                          child: Text(
                                            'Invoice Amount',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2,
                                              letterSpacing: 0.400000006,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // titleNDb (0:160)
                                          child: Text(
                                            'AR Invoice',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              height: 1.2,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 40,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // titleG29 (0:159)
                                          child: Text(
                                            'Invoice Type',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2,
                                              letterSpacing: 0.400000006,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // titleNDb (0:160)
                                          child: Text(
                                            'kuwait',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              height: 1.2,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10,),
                                        Container(
                                          // titleG29 (0:159)
                                          child: Text(
                                            'Ispaid',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2,
                                              letterSpacing: 0.400000006,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // titleNDb (0:160)
                                          child: Text(
                                            'Yes',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              height: 1.2,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // line131prH (0:178)
                        width: double.infinity,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: Color(0xff000000),
                        ),
                      ),
                      Container(
                        // autogrouptmthmFj (NEmzq8WmHuMV1VpFoNTMth)
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17.0,bottom: 10,top: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // titleMfs (0:157)
                                    child: Text(
                                      'Payment Tracking Id',
                                      style: GoogleFonts.lato(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2,
                                        letterSpacing: 0.400000006,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // titlerFF (0:158)
                                    child: Text(
                                      '98878780000',
                                      style: GoogleFonts.lato(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w900,
                                        height: 1.2,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17.0,bottom: 12),
                                    child: InkWell(
                                      onTap: ()async{
                                        await appExt.push(const Address(), context);
                                      },
                                      child: Container(
                                        // group93H8H (0:180)
                                        width: 100,
                                        height: 28,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Container(
                                          // group12CW9 (0:181)
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            border:
                                            Border.all(color: const Color(0xff000000)),
                                            color: const Color(0xff43b8c1),
                                            borderRadius: BorderRadius.circular(4),
                                            boxShadow: [
                                              const BoxShadow(
                                                color: Color(0xff000000),
                                                offset: Offset(2, 2),
                                                blurRadius: 0,
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'View Invoice',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.lato(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3289999644,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
/*
                        Container(
                          // line132Ppq (0:179)
                          width: double.infinity,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Color(0xff000000),
                          ),
                        ),
*/
/*
                        Container(

                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupusemhKj (NEn1JnPMWFc7zZeaJ1usEm)
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 17.0,bottom: 10,top: 10,right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // titleMfs (0:157)
                                            child: Text(
                                              'On Hand qty',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2,
                                                letterSpacing: 0.400000006,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // titlerFF (0:158)
                                            child: Text(
                                              '98.0000',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w900,
                                                height: 1.2,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // titleG29 (0:159)
                                            child: Text(
                                              'Reserved qty',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2,
                                                letterSpacing: 0.400000006,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // titleNDb (0:160)
                                            child: Text(
                                              '2022-12-15',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w900,
                                                height: 1.2,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            // titlemjb (0:174)
                                            'qty available',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2,
                                              letterSpacing: 0.400000006,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          Container(
                                            // titleJ7F (0:175)
                                            child: Text(
                                              'AshrafHussain',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w900,
                                                height: 1.2,
                                                color: Color(0xff000000),
                                              ),
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
*/
                    ],
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
