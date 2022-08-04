import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/filters_screen.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  // const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildListTile(String title, IconData icon, Function taphandler) {
      return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        onTap: taphandler,
      );
    }

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              'hey, Keystone !',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  // color: Theme.of(context).errorColor,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Foodies', Icons.restaurant, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TabsScreen()));
          }),
          buildListTile('Filters', Icons.settings,(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FiltersScreen()));
          }),
          buildListTile('about', Icons.newspaper, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FiltersScreen()));
          }),
          buildListTile('Contact', Icons.phone, () {}),
          buildListTile('Rate Us', Icons.rate_review, () {}),
        ],
      ),
    );
  }
}
