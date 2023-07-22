import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/address.dart';
import 'package:stack/b2borders.dart';
import 'package:stack/btoc_orders.dart';
import 'package:stack/custom_text_feild.dart';
import 'package:stack/drawer.dart';
import 'package:stack/my_b2b_customers.dart';
import 'package:stack/my_websites.dart';
import 'package:stack/return_drawer.dart';
import 'package:stack/utils.dart';

class AddOrderDetails extends StatelessWidget {
  const AddOrderDetails({super.key});

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
            Container(
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
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // yourealmostthereA4D (1:145)
                        child:
                        Text(
                          'ADD ORDER DETAILS',
                          style:  GoogleFonts.lato (
                            fontSize:  16,
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
                                'Pick Up Required',
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
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 20),
                  child: Text(
                    'IF PICK UP REQUIRED',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w900,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 6),
                  child: Text(
                    'Pick up Date',
                    style:  GoogleFonts.lato (
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 6),
                  child: CustomTextFeild(hintText: 'mm/dd/yyyy',),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 6),
                  child: Text(
                    'Delivery',
                    style:  GoogleFonts.lato (
                      height:  1.2,
                      fontWeight: FontWeight.w800,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      Text(
                        'Car',
                        style:  GoogleFonts.lato (
                          fontSize:  15,
                          fontWeight:  FontWeight.w400,
                          height:  1.2,
                          color:  Color(0xff000000),
                        ),
                      ),
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
                                  value: false,
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
                      Text(
                        'Mini Van',
                        style:  GoogleFonts.lato (
                          fontSize:  15,
                          fontWeight:  FontWeight.w400,
                          height:  1.2,
                          color:  Color(0xff000000),
                        ),
                      ),
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
                                  value: false,
                                  onChanged: (val){},
                                  activeColor: Colors.blue,
                                  checkColor: Colors.black,
                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Half Lorry',
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0,right: 2,bottom: 8),
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
                                value: false,
                                onChanged: (val){},
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
                      padding: const EdgeInsets.only(left: 10.0,bottom: 8),
                      child: Text(
                        'Container',
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
                Padding(
                  padding: const EdgeInsets.only(left: 14.0,bottom: 20),
                  child: Text(
                    'Please note wrong Selection of vehicle may cause delays in deliveries.',
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
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 6),
                  child: Text(
                    'First Name',
                    style:  GoogleFonts.lato (
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 6),
                  child: CustomTextFeild(hintText: '-----',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 6),
                  child: Text(
                    'Mobile #',
                    style:  GoogleFonts.lato (
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 6),
                  child: CustomTextFeild(hintText: '-----',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: CustomTextFeild(hintText: '------',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: CustomTextFeild(hintText: '------',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 14,bottom: 4),
                  child: CustomTextFeild(hintText: '-----',),
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
                    'ATTACH RELEVANT PURCHASE\nORDERS & INVOICES',
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
              ],
            ),
          ),
        )
      ),
    );
  }
}
