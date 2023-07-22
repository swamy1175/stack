import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/account_with_stash.dart';
import 'package:stack/add_b2b_customer.dart';
import 'package:stack/add_order_details.dart';
import 'package:stack/address.dart';
import 'package:stack/b2b_order_view.dart';
import 'package:stack/b2borders.dart';
import 'package:stack/btoc_orders.dart';
import 'package:stack/custom_text_feild.dart';
import 'package:stack/edit_b2b_orders.dart';
import 'package:stack/edit_product_details.dart';
import 'package:stack/enter_product_details.dart';
import 'package:stack/exchange_orders.dart';
import 'package:stack/forgot_password.dart';
import 'package:stack/home_screen.dart';
import 'package:stack/inbound.dart';
import 'package:stack/inbound_order_view.dart';
import 'package:stack/inventory_tracking.dart';
import 'package:stack/my_b2b_customers.dart';
import 'package:stack/my_stashed_inventory.dart';
import 'package:stack/my_stashed_inventory1.dart';
import 'package:stack/my_stashed_inventory2.dart';
import 'package:stack/my_websites.dart';
import 'package:stack/new_order.dart';
import 'package:stack/orderview.dart';
import 'package:stack/return_orders.dart';
import 'package:stack/search_bottomsheet.dart';
import 'package:stack/self_delivery.dart';
import 'package:stack/utils.dart';

import 'edit_b2c_orders.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Center(
                child: SizedBox(
                  width: 275,
                    height: 334,
                    child: Image.asset('assets/Screenshot 2023-07-19 211945.png')),
              ),
              Container(
                // useyourregisteredemailpassword (0:171)
                margin:  EdgeInsets.fromLTRB(0, 0, 4, 22),
                constraints:  BoxConstraints (
                  maxWidth:  242,
                ),
                child:
                Text(
                  'Use your registered email & Password to Login\n',
                  textAlign:  TextAlign.center,
                  style:  GoogleFonts.lato (
                    fontSize:  20,
                    fontWeight:  FontWeight.w400,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
              ),
              Center(
                  child : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 360,
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            suffixIcon: Icon(Icons.email),
                            hintStyle:  GoogleFonts.lato (
                              fontSize:  14,
                              fontWeight:  FontWeight.w400,
                              height:  1.2,
                              color:  Color(0xff000000),
                            ),
                            filled: true,
                            fillColor: Colors.white70,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide(color: Color(0xff43b8c1), width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide(color: Color(0xff43b8c1), width: 2),
                            ),
                          ),)
                    ),
                  )),
              Center(
                  child : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width:  360,
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.key),
                            hintStyle:  GoogleFonts.lato (
                              fontSize:  14,
                              fontWeight:  FontWeight.w400,
                              height:  1.2,
                              color:  Color(0xff000000),
                            ),
                            filled: true,
                            fillColor: Colors.white70,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide(color: Colors.black, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide(color: Color(0xff43b8c1), width: 2),
                            ),
                          ),)
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 360,
                  height: 50,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    color:Color(0xff000000),
                    onPressed: (){
                      appExt.push(MyHomePage(), context);
                    },child: Center(
                    child:
                    Text(
                      'Sign In',
                      style:  GoogleFonts.lato (
                        fontSize:  18,
                        fontWeight:  FontWeight.w400,
                        height:  1.2,
                        color:  Color(0xffffffff),
                      ),
                    ),
                  ),),
                ),
              ),
              TextButton(onPressed: (){
                appExt.push(ForgotPassword(), context);
              }, child: Text(
                'Forgot Password',
                style:  GoogleFonts.lato (
                  fontSize:  13,
                  fontWeight:  FontWeight.w400,
                  height:  1.2,
                  color:  Color(0xff000000),
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
