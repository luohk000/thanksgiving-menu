class Recipe {
  String name;
  String url;
  List<String> instructions;

  Recipe(
    this.name,
    this.url,
    this.instructions,
  );

  static List<Recipe> turkey = [
    Recipe('Roasted Turkey', 'assets/roasted_turkey.png', [
      "1. Prepare the turkey for roasting.",
      "2. Preheat the oven to 450°F.",
      "3. Add liquid to the roasting pan.",
      "4. Roast the turkey.",
      "5. Enjoy"
    ]),
    Recipe('Turkey Sandwich', 'assets/turkey_sandwich.png', [
      "1. Spread mayonnaise on bread slices, layer one slice with sliced turkey, Swiss cheese, lettuce, tomato, salt and pepper.",
      "2. Top sandwich with remaining bread slice, cut into halves, and serve.",
      "3. Serve"
    ]),
    Recipe('Turkey Salad', 'assets/turkey_salad.png', [
      "1. In a large bowl, combine the chopped turkey, mayonnaise, mustard, lemon juice, sugar, celery, scallions and dill, stirring until well combined. ",
      "2. Taste and season the turkey salad with salt and pepper. Serve immediately or refrigerate, covered, until ready to serve."
    ]),
  ];
  static List<Recipe> dessert = [
    Recipe('Apple Pie', 'assets/apple_pie.png', [
      "1. Heat oven to 425°F. Place 1 pie crust in ungreased 9-inch glass pie plate. Press firmly against side and bottom.",
      "2. In large bowl, gently mix filling ingredients; spoon into crust-lined pie plate. Top with second crust.",
      "3. Wrap excess top crust under bottom crust edge, pressing edges together to seal; flute. Cut slits or shapes in several places in top crust.",
      "4. Bake until apples are tender and crust is golden brown. Cool on cooling rack at least 2 hours before serving."
    ]),
    Recipe('Pumpkin Pie', 'assets/pumpkin_pie.png', [
      "1. Mix sugar, cinnamon, salt, ginger and cloves in small bowl. Beat eggs in large bowl.",
      "2. Stir in pumpkin and sugar-spice mixture. Gradually stir in evaporated milk.",
      "3. Pour into pie shell.",
      "4. Bake in preheated 425° F oven for 15 minutes. Reduce temperature to 350° F, bake for 40 minutes. Serve!"
    ]),
    Recipe('Cranberry Sauce', 'assets/cranberry_sauce.png', [
      "1. Dissolve sugar in the orange juice in a medium saucepan over medium heat.",
      "2. Stir in the cranberries and cook until they start to pop, about 10 minutes.",
      "3. Remove from heat and place sauce in a bowl. It will thicken as it cools."
          "4. Ready to serve!"
    ]),
  ];
  static List<Recipe> drinks = [
    Recipe('Apple Cider', 'assets/apple_cider.png', [
      "1. Combine your ingredients in a stockpot. Add the apples, oranges, and spices to a large stockpot. Cover with water.",
      "2. Heat the cider over high heat. Then lower heat, cover and simmer until the apples are completely soft.",
      "3. Mash all of the apples and oranges against the side of the stockpot to release more of their flavors.",
      "4. Strain out all of the solids, pressing them against the strainer to release all of their juices.",
      "5. Serve warm!"
    ]),
    Recipe('Orange Juice', 'assets/oj.png', ["Available in stores!"]),
    Recipe('Water', 'assets/water.png', ["Available in stores!"]),
  ];
}
