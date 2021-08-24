import 'package:flutter/material.dart';
import 'package:zavatar_new/navpages/private_AutoExpand.dart';
import 'package:zavatar_new/navpages/private_ExpandwithImage.dart';
import 'package:zavatar_new/navpages/public_AutoExpand.dart';
import 'package:zavatar_new/navpages/public_ExpandwithImage.dart';
import 'package:zavatar_new/navpages/sport_TestMemory.dart';
import 'package:zavatar_new/navpages/sport_TestMemorywithImage.dart';

import 'navpages/private_AutoExpand.dart';
import 'navpages/private_ExpandwithImage.dart';
import 'navpages/public_AutoExpand.dart';
import 'navpages/public_ExpandwithImage.dart';
import 'navpages/sport_TestMemory.dart';
import 'navpages/sport_TestMemorywithImage.dart';

class NavDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 5);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(111, 24, 157, 1),  
        child: ListView(
          children: <Widget>[
              const SizedBox(height: 15, width: 10,),
              buildMenuItem(text: 'Private Note Auto Expand', 
              icon: Icons.add_box_outlined,
              onClicked:() => selectedItem(context, 0),
              ),
              const SizedBox(height: 15, width: 10,),
              buildMenuItem(text: 'Public Note Auto Expand', 
              icon: Icons.add_box_rounded,
              onClicked:() => selectedItem(context, 1),
              ),
              const SizedBox(height: 15, width: 10,),
              buildMenuItem(text: 'Private Note Auto Expand with Image', 
              icon: Icons.add_photo_alternate_rounded,
              onClicked:() => selectedItem(context, 2),
              ),
              const SizedBox(height: 15, width: 10,),
              buildMenuItem(text: 'Public Note Auto Expand with Image', 
              icon: Icons.add_photo_alternate_sharp,
              onClicked:() => selectedItem(context, 3),
              ),
              const SizedBox(height: 15, width: 10,),
              buildMenuItem(text: 'Sport Test Memory', 
              icon: Icons.sports_bar,
              onClicked:() => selectedItem(context, 4),
              ),
              const SizedBox(height: 15, width: 10,),
              buildMenuItem(text: 'Sport Test Memory with Image', 
              icon: Icons.sports_bar_rounded,
              onClicked:() => selectedItem(context, 5),
              ),
          ],
          ),
      ),
            
          
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
    })
     {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color),),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index){
   switch (index){
     case 0:
     Navigator.of(context).push(MaterialPageRoute(
       builder: (context) => NavPrivatePage(),
       ));
     break;
     case 1:
     Navigator.of(context).push(MaterialPageRoute(
       builder: (context) => PublicAutoExpand()
       ));
       break;
       case 2:
       Navigator.of(context).push(MaterialPageRoute(
         builder: (context) => PrivateExpandWithImage(),
         ));
         break;
         case 3:
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => PublicExpandwithImage(),
         ));
         break;
         case 4:
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => SportTestMemory(),
         ));
         break;
         case 5:
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => SportTestMemoryWithImage(),
         ));
         break;
   }
  }
}
