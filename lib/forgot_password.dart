import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/utils.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,size: 40,))),
              ),
              Center(
                child: SizedBox(
                    width: 275,
                    height: 334,
                    child: Image.network('https://firebasestorage.googleapis.com/v0/b/fir-project-6bac0.appspot.com/o/Screenshot%202023-07-19%20212001.png?alt=media&token=303461e8-43ad-4449-acdf-b4cfa0316799')),
              ),
              Container(
                // useyourregisteredemailpassword (0:171)
                margin:  EdgeInsets.fromLTRB(0, 0, 4, 22),
                constraints:  BoxConstraints (
                  maxWidth:  350,
                ),
                child:
                Text(
                  'Use your registered email & Password to Reset Password',
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
                  child : Container(
                      margin:  EdgeInsets.fromLTRB(0, 0, 4, 0),
                      padding:  EdgeInsets.fromLTRB(20, 16, 30, 10),
                      width:  double.infinity,
                      height: 75,
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
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                        ),)
                  )),
              Center(
                  child : Container(
                      margin:  EdgeInsets.fromLTRB(0, 0, 4, 0),
                      padding:  EdgeInsets.fromLTRB(20, 16, 30, 10),
                      width:  double.infinity,
                      height: 75,
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
                  )),
              Center(
                  child : Container(
                      margin:  EdgeInsets.fromLTRB(0, 0, 4, 0),
                      padding:  EdgeInsets.fromLTRB(20, 16, 30, 10),
                      width:  double.infinity,
                      height: 75,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
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
                  )),
              Center(
                  child : Container(
                      margin:  EdgeInsets.fromLTRB(0, 0, 4, 0),
                      padding:  EdgeInsets.fromLTRB(20, 16, 30, 10),
                      width:  double.infinity,
                      height: 75,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Re new password',
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
                  )),

              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: SizedBox(
                  height: 48,
                  width: 360,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    color:Color(0xff000000),
                    onPressed: (){},child: Center(
                    child:
                    Text(
                      'Reset Password',
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
            ],
          ),
        ),
      ),
    );  }
}
