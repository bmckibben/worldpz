# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

############################################
units = [
"oz",
"cup",
"tbl",
"tsp"
]

units.each do |name|
  RecipeIngredientsUnit.create( ingredient_unit_name: name )
end

############################################
recipes = [
[1,"Umami","All meat, all the time. Pepperoni, Italian Sausage, Shrimp, Bacon, Shredded Chicken, Moz Cheese, Italian Herbs, Red Sauce.",1],
[1,"Quintessential","Original Italian IMHO. Pepperoni, Italian Sausage, Black Olives, Bell Pepper, Onion, Mushrooms, Mozzarella Cheese, Red Sauce, Oregano.",2],
[1,"Attack of the Prawn","Homage to <em>Pizza Attack, Malaysia</em> some of the best pizza I've ever eaten. Shrimp, Fresh Sliced Tomato, Fresh Basil Leaves, Moz/Parm Cheese.",3],
[1,"Enchalada Mama","¡Ay, caramba! Carnitas, Jalapeno, Black Beans, Enchilada Sauce, Cheddar/Jack Cheese.",4],
[1,"Marrakesh","I like your smiling Fez. Falafel, Tahini, Marinated Onions, Spinach Leaves, Harissa Tomato Sauce",5],
[1,"Oxymoron","Vegan all meat pie featuring Beyond Meat products. No animals were harmed in the making of this production.",6],
[1,"Jambalaya","Ça c'est bon! Andouille Sausage, Mudbugs (Crawfish), Chicken, Creole Sauce.",7],
[1,"Tandoori","Indian spiced roast chicken and the wife's secret curry sauce.",8],
[1,"Abomination","What most people would call an Hawaiian pizza. But I believe there is no place for pineapple on a pizza. Hence the name.",10],
[1,"Rendang","Spicy Coconut Beef",11],
[1,"Sichuan","Another <em>Pizza Attack</em> speciality. Chicken, Wood Ear Mushrooms, Spring Onions, Red Sauce with Anise and Cinnamon, Red Pepper Flakes",12],
]

recipes.each do |category, name,description,order|
  Recipe.create( category_id: category, recipe_name: name, recipe_description: description, sort_order:order)
end

############################################
catagories = [
"pizza",
"crust",
"sauce"
]

catagories.each do |name|
  RecipeCategory.create( category_name: name )
end