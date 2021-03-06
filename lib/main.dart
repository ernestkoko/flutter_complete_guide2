import 'package:flutter/material.dart';
import 'package:flutter_complete_guide2/screens/filters_screen.dart';
import 'package:flutter_complete_guide2/screens/meal_detail_screen.dart';
import 'package:flutter_complete_guide2/screens/tabs_screen.dart';

import 'file:///C:/Users/user/flutter/flutter_complete_guide2/lib/screens/category_meals_screen.dart';

import 'screens/categories_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromARGB(255, 255, 254, 229),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromARGB(255, 20, 51, 51),
            ),
            bodyText2: TextStyle(
              color: Color.fromARGB(253, 20, 51, 51),
            ),
            headline6: TextStyle(
                fontSize: 24.0,
                fontFamily: "RobotoCondensed",
                fontWeight: FontWeight.bold)),
      ),

      //route table takes map
      routes: {
        //home has a default route of '/'
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        FilterScreen.routeName: (context) => FilterScreen()
      },
      //this route is called when we try to go to an unregistered route
      // onGenerateRoute:(settings){
      //   print(settings.name);
      //   return MaterialPageRoute(builder: (cxt) => CategoryScreen());
      // } ,
      //reached when flutter fails to build a screen with all other measures
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CategoryScreen(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Text(
          'Navigation Time',
        ),
      ),
    );
  }
}
