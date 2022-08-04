import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/favorites_screen.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  // const TabScreen({Key? key}) : super(key: key);

  // static const routeName='/';
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your favourites'
    }
    // CategoriesScreen(),
    // FavoritesScreen(),
  ];
  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //   return DefaultTabController(length: 2, child: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Foodies',),
    //       bottom: TabBar(tabs: [
    //         Tab(icon: Icon(Icons.category),text: 'Categories',),
    //         Tab(icon: Icon(Icons.star),text: 'favourite',),
    //       ],),
    //     ),
    //     body: TabBarView(children: [
    //       CategoriesScreen(),FavoritesScreen(),
    //     ],),
    //   ));
    //
    // }
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Foodies'),
      // ),
      // body: _pages[
      //   _selectedPageIndex
      // ],
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: _selectedPage,
      //   backgroundColor: Colors.grey,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.category)
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.star)
      //     )
      //   ],
      // ),
      appBar: AppBar(
        // title: Text(_pages[_selectedPageIndex]['title']),
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        //selectedItemColor: Theme.of(context).accentColor,
        selectedItemColor: Colors.lightGreenAccent,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              label: 'Categories'),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
