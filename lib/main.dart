import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/category_meals_screen.dart';
import 'package:flutter_complete_guide/screens/meal_detail_screen.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';
import 'widgets/category_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodies',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255,254 , 229, 1),
        fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
            titleMedium: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold
            )
          ),
      ),
      home: TabsScreen(),
     // initialRoute: '/',
      routes: {
         // '/':(ctx)=>TabsScreen(),
        //TabsScreen.routeName:(ctx)=>TabsScreen(),
        CategoryMealScreen.routeName:(ctx)=>CategoryMealScreen(),
        // '/category-meals' : (ctx)=> CategoryMealScreen(),
        // '/category-meals' : (ctx)=> TabsScreen(),
        MealDetailScreen.routeName:(ctx)=>MealDetailScreen(),
      },
      onGenerateRoute: (settings){
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) =>CategoriesScreen());
      },
      onUnknownRoute:(settings){
        return MaterialPageRoute(builder: (ctx) =>CategoriesScreen());
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         title: Text('Foodies'),
//         centerTitle: true,
//         backgroundColor: Colors.pinkAccent,
//       ),
//       body: Center(
//         child: Text('Navigation Time!'),
//       ),
//     );
//   }
// }
