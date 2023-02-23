def restaurant_a2(how_hungry_are_you)
    meal = "Ribeye" if how_hungry_are_you >= 9 
    meal = "Chicken" if how_hungry_are_you < 9 && how_hungry_are_you >= 7
    meal = "Soup" if how_hungry_are_you < 7 && how_hungry_are_you >= 4
    meal = "Salad" if how_hungry_are_you < 4 && how_hungry_are_you >= 1
    return meal               
 end