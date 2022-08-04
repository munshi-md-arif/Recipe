import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchList(String title, String description, bool currentValue,
      Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  // const FiltersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foodies'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal Selection',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchList(
                    'Gluten Free', 'Only add Gluten free meals', _glutenFree,
                    (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _buildSwitchList('Lactose Free', 'Only add Lactose free meals', _lactoseFree,(newValue){
                  setState((){
                    _lactoseFree=newValue;
                  });
                }),
                _buildSwitchList('vegetarian', 'Only add Gvegetariane meals', _vegetarian,(newValue){
                  setState((){
                    _vegetarian=newValue;
                  });
                }),
                _buildSwitchList('vegan', 'Only add vegan meals', _vegan,(newValue){
                  setState((){
                    _vegan=newValue;
                  });
                }),
              ],
            ),
          ),

        ],

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: null
      ),
    );
  }
}
