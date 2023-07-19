import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/forgot_password.dart';
import 'package:stack/utils.dart';

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
                    child: Image.network('https://firebasestorage.googleapis.com/v0/b/fir-project-6bac0.appspot.com/o/Screenshot%202023-07-19%20211945.png?alt=media&token=8411cf2b-3a74-45a3-800b-c11c2ab93f25')),
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
                            borderSide: BorderSide(color: Color(0xff43b8c1), width: 2),
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
