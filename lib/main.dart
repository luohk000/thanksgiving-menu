import 'package:flutter/material.dart';
import 'recipe.dart';
import 'detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Thanksgiving',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.orange[700],
      )),
      home: const MyHomePage(title: 'Thanksgiving Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Widget> _menuTypes = <Widget>[
    Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.turkey.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(recipe: Recipe.turkey[index]);
                }));
              },
              child: buildRecipeCard(Recipe.turkey[index]),
            );
          },
        ),
      ),
    ),
    Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.dessert.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(recipe: Recipe.dessert[index]);
                }));
              },
              child: buildRecipeCard(Recipe.dessert[index]),
            );
          },
        ),
      ),
    ),
    Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.drinks.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(recipe: Recipe.drinks[index]);
                }));
              },
              child: buildRecipeCard(Recipe.drinks[index]),
            );
          },
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: _menuTypes.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: "Turkey",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: "Dessert",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_food_beverage),
            label: "Drinks",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[900],
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    color: Colors.brown[800],
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.url)),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            recipe.name,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],
      ),
    ),
  );
}
