import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/meal_item.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class CategoryMealScreen extends StatefulWidget {
  // const CategoryMealScreen({Key? key}) : super(key: key);
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealScreen(this.categoryId,this.categoryTitle);
  static const routeName='/category-meals';

  @override
  State<CategoryMealScreen> createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  String categoryTitle;
  List<Meal>displayMeals;

  @override
  void initState() {
    // TODO: implement initState
      super.initState();

  }
  @override
  void didChangeDependencies() {
    var _loadedinitData=false;
    if(!_loadedinitData){
      final routeArgs =
      ModalRoute
          .of(context)
          .settings
          .arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayMeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedinitData=true;
    }

    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  void _removeMeal(String mealId){
    setState((){
      displayMeals.removeWhere((meal) => meal.id==mealId);
    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayMeals[index].id,
              title: displayMeals[index].title,
              imageUrl: displayMeals[index].imageUrl,
              duration: displayMeals[index].duration,
              complexity: displayMeals[index].complexity,
              affordability: displayMeals[index].affordability);
              removeMeal:_removeMeal;

        },
        itemCount: displayMeals.length,
      ),
    );
  }
}
