import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/inventory_tracking.dart';
import 'package:stack/my_stashed_inventory1.dart';
import 'package:stack/my_stashed_inventory2.dart';
import 'package:stack/utils.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Drawer(
          width: 500,
          child: ListView(
            padding: EdgeInsets.zero,
            children:<Widget> [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back,size: 35,)),
                  SizedBox(width: 100,),
                  Text(
                    'Inventory',
                    style:  GoogleFonts.lato (
                      fontSize:  20,
                      fontWeight:  FontWeight.w500,
                      height:  1.2,
                      color:  Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              ListTile(
                leading: Image.asset('assets/home.png'),
                title:  Text(
                  'Products',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w500,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
                onTap: () async{
                  await appExt.push(MyStashedInventory2(), context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset('assets/send inventory.png'),
                title:  Text(
                  'Send Inventory',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w500,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
                onTap: () async{
                  await appExt.push(MyStashedInventory1(), context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset('assets/tracking.png'),
                title:  Text(
                  'Tracking',
                  style:  GoogleFonts.lato (
                    fontSize:  15,
                    fontWeight:  FontWeight.w500,
                    height:  1.2,
                    color:  Color(0xff000000),
                  ),
                ),
                onTap: () async{
                  await appExt.push(InventoryTracking(), context);
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
