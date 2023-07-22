import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/custom_text_feild.dart';

class EditB2COrders extends StatefulWidget {
  const EditB2COrders({super.key});

  @override
  State<EditB2COrders> createState() => _EditB2COrdersState();
}
bool _value = false;
bool _value1 = true;

class _EditB2COrdersState extends State<EditB2COrders> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
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
      body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children:  [
                          Container(
                            // yourealmostthereA4D (1:145)
                            margin:  EdgeInsets.fromLTRB(0, 0, 0, 13),
                            child:
                            Text(
                              'Edit B2C Orders',
                              style:  GoogleFonts.lato (
                                fontSize:  20,
                                fontWeight:  FontWeight.w900,
                                height:  1.2,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // yourealmosttherek2R (1:149)
                            '#OBCM202305257128',
                            style:  GoogleFonts.lato (
                              fontSize:  15,
                              fontWeight:  FontWeight.w400,
                              height:  1.2,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ],
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
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Order Date',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Container(
                    height: 50,
                    width:  350,
                    decoration:  BoxDecoration (
                      color:  Color(0xffd9d9d9),
                      borderRadius:  BorderRadius.circular(4),
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '05/02/2023',
                        style:  GoogleFonts.lato (
                          fontSize:  15,
                          fontWeight:  FontWeight.w400,
                          height:  1.2,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Requested Delivery Date',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
            child: Container(
              height: 50,
              // autogroupnsooXKK (VXaSwVMHqLA7Dhz3ewnSoo)
              width:  350,
              decoration:  BoxDecoration (
                  border:  Border.all(color :Color(0x99000000)),
              color:  Color(0x99ffffff),
              borderRadius:  BorderRadius.circular(4),
            ),
            child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '05/02/2023',
                style:  GoogleFonts.lato (
                  fontSize:  15,
                  fontWeight:  FontWeight.w400,
                  height:  1.2,
                  color:  Color(0xff000000),
                ),
              ),
            ),
    ),
      ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Same Day Delivery for all orders placed before 4PM.',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                  width: 150,
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
                                        value: _value1,
                                        onChanged: (state) =>
                                            setState(() => _value1 = !_value1),
                                        activeColor: Colors.blue,
                                        checkColor: Colors.black,
                                        materialTapTargetSize: MaterialTapTargetSize.padded,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Image.asset('assets/Group 36.png'),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 150,
                        decoration:  BoxDecoration (
                          border:  Border.all(color: Color(0xff43b8c1)),
                          color:  Color(0xffffffff),
                          borderRadius:  BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(12),
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
                                        value: _value,
                                        onChanged: (state) =>
                                            setState(() => _value = !_value),
                                        activeColor: Colors.blue,
                                        checkColor: Colors.black,
                                        materialTapTargetSize: MaterialTapTargetSize.padded,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Image.asset('assets/Black.png'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 150,
                        decoration:  BoxDecoration (
                          border:  Border.all(color: Color(0xff43b8c1)),
                          color:  Color(0xffffffff),
                          borderRadius:  BorderRadius.circular(8),
                        ),
                        child: Row(
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
                                        value: _value,
                                        onChanged: (state) =>
                                            setState(() => _value = !_value),
                                        activeColor: Colors.blue,
                                        checkColor: Colors.black,
                                        materialTapTargetSize: MaterialTapTargetSize.padded,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Image.asset('assets/Black (1).png'),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 150,
                        decoration:  BoxDecoration (
                          border:  Border.all(color: Color(0xff43b8c1)),
                          color:  Color(0xffffffff),
                          borderRadius:  BorderRadius.circular(8),
                        ),
                        child: Row(
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
                                        value: _value,
                                        onChanged: (state) =>
                                            setState(() => _value = !_value),
                                        activeColor: Colors.blue,
                                        checkColor: Colors.black,
                                        materialTapTargetSize: MaterialTapTargetSize.padded,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // ),
                            Image.asset('assets/Black (2).png'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: CustomTextFeild(hintText: '05/10/223',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: CustomTextFeild(hintText: '+91 99385859',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Address Information',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w900,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: CustomTextFeild(hintText: 'Kuwait',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: CustomTextFeild(hintText: 'Alhamadi',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
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
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: CustomTextFeild(hintText: '-----',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Address',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: CustomTextFeild(hintText: 'block2',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Type',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w900,
                      height:  1.2,
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
                                  value: _value1,
                                  onChanged: (state) =>
                                      setState(() => _value1 = !_value1),
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
                        'House',
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
                                  value: _value,
                                  onChanged: (state) =>
                                      setState(() => _value = !_value),
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
                        'Apartment',
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
                                  value: _value,
                                  onChanged: (state) =>
                                      setState(() => _value = !_value),
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
                        'Other',
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
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Order Payments',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w900,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Payment Method',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: CustomTextFeild(hintText: 'block2',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 4),
                  child: Text(
                    'Order Amount',
                    style:  GoogleFonts.lato (
                      fontSize:  15,
                      fontWeight:  FontWeight.w400,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,bottom: 8),
                  child: CustomTextFeild(hintText: '00000',),
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
                       Row(
                         children: [
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
        ),
      ),
    );
  }
}
