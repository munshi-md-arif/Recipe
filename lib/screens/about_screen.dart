import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';
class AboutScreen extends StatelessWidget {
  // const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foodies'),
      ),
      drawer: MainDrawer(),
      body: Container(
          child: Center(
            child: Text(
              'This feature is locked by Md. Arif',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
      ),
    );
  }
}
