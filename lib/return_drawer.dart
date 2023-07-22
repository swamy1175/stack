import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/exchange_orders.dart';
import 'package:stack/return_orders.dart';
import 'package:stack/utils.dart';

class RunnerDrawer extends StatelessWidget {
  const RunnerDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:<Widget> [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,size: 35,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Center(
                      child: Text(
                        'Returns & Exchanges',
                        style:  GoogleFonts.lato (
                          fontSize:  20,
                          fontWeight:  FontWeight.w500,
                          height:  1.2,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              ListTile(
                leading: Image.asset('assets/returns1.png'),
                title:  Text(
                  'Returns',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w500,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
                onTap: () async{
                  await appExt.push(ReturnOrders(), context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset('assets/exchanges.png'),
                title:  Text(
                  'Exchanges',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w500,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
                onTap: () async{
                  await appExt.push(ExchangeOrders(), context);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
