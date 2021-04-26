import Foundation
import SwiftUI


struct Entry: Codable, Identifiable {
    var id = UUID()
    var title: String
    var location: String
    var notes: String
    var review: String
    var image: String
}





//let entry1 = Entry(title: "Steak",
//                   description: "Medium rare and served with Hot Chips",
//                   story: "Juicy, tender, loaded with flavor, and has a minimum amount of fat. However, there is a special kind of fat that helps meat be juicy and full of flavor. The best food in the world!",
//                   image: "https://hips.hearstapps.com/del.h-cdn.co/assets/18/08/1519155106-flank-steak-horizontal.jpg",
//                   recipe:  """
//                            1. Bring to room temp! This makes an amazing difference to cooking through evenly rather than ending up with a thick overcooked band in order for the very centre to be cooked to your liking.
//                            2. Pat dry and season the steak generously with salt and pepper – this helps form that amazing crust we all know and love about great steaks.
//                            3. Get your skillet SMOKING HOT before putting the steak in – again, for the crust WARNING: The butter will sputter when you add the thyme, so stand back!
//                            4. Take the steak off the stove BEFORE your desired internal temperature (see chart below) because the internal temperature will continue to rise as it rests.
//                            5. REST your steak for 5 to 10 minutes so it sucks its own juices back in and the fibres relax. This is a must-do step for any protein you cook hard and fast!
//                            """,
//                   ingredients: """
//                                Thickish cut steak – no more than 2.5cm/1″ thick, because we want to cook this entirely on the stove (thicker cuts need to be finished in the oven). Ideal steaks: boneless rib eye / scotch fillet, porterhouse / New York, T-bone. Grade: takes high quality steak over the top amazing, really elevates economical steak.
//                                Butter, garlic and fresh thyme
//                                """,
//                   idNumber: "1")
//
//let entry2 = Entry(title: "Strawberry cake",
//                   description: "It's a Lie!",
//                   story: "No-one has to refuse a piece of this heavenly strawberry cake – it's gluten- and dairy-free.",
//                   image: "https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Strawberry-Jam-Cake_EXPS_FT21_92780_F_0218_1.jpg",
//                   recipe:      """
//                                Step 1
//                                Preheat oven to 180C/160C fan-forced. Grease 2 x 6cm-deep, 20cm round cake pans. Line bases and sides with 2 layers of baking paper.
//                                Step 2
//                                Sift 1/2 the flour and 1/2 the baking powder into a large bowl. Add 1/2 the almond meal and 1/2 the sugar. Stir to combine. Make a well. Lightly beat 2 eggs in a bowl. Add to well with 1/2 the oil, 1/2 the milk and 1/2 the vanilla. Stir mixture until well combined.
//                                Step 3
//                                Divide mixture between prepared pans, spreading to cover bases. Bake for 20 to 23 minutes or until a skewer inserted into the centre of cakes comes out clean. Stand cakes in pans for 10 minutes. Turn, top-side up, onto a wire rack lined with baking paper to cool completely. Repeat process to make 2 more cakes.
//                                Step 4
//                                Make Frosting: using an electric mixer, beat Nuttelex, vanilla and icing sugar until light and fluffy. Using food colouring, tint frosting pale pink.
//                                Step 5
//                                Place 1 cake on a serving plate. Spread top with 1 tablespoon jam. Dollop with 1/2 cup frosting, spreading to cover jam. Place a second cake on top. Spread top with 1 tablespoon jam. Dollop with 1/2 cup frosting, spreading to cover jam. Continue layering with remaining cakes, jam and frosting, finishing with cake. Using a long palette knife, spread top and side of cake with remaining frosting. Using the edge of the palette knife (see notes), scrape off some of the frosting to create a slightly ‘naked’ effect. Refrigerate for 20 minutes.
//                                Step 6
//                                Crush 1/3 of the strawberries. Using the picture as a guide, arrange remaining strawberries and rose petals, if using, on top of cake. Sprinkle with a little crushed strawberries. Gently pat remaining crushed strawberries around base of cake. Serve.
//                                """,
//                   ingredients: """
//                                    INGREDIENTS
//                                    3 cups buckwheat flour
//                                    1 1/2 tablespoons gluten-free baking powder
//                                    2 cups almond meal
//                                    1 1/2 cups caster sugar
//                                    4 eggs
//                                    1 cup sunflower oil
//                                    1 1/2 cups unsweetened almond milk
//                                    2 teaspoons vanilla bean paste
//                                    1/4 cup gluten-free strawberry jam
//                                    10g packet freeze-dried strawberries (see notes)
//                                    Edible rose petals (optional), to serve
//                                    FROSTING
//                                    250g Nuttelex dairy-free spread
//                                    1 teaspoon vanilla bean paste
//                                    3 cups gluten-free icing sugar mixture
//                                    Pink gel food colouring
//                                """,
//                   idNumber: "2")
//
//let entry3 = Entry(title: "Tomato and Spinach Pasta",
//                   description: "Flavorful and delicious!",
//                   story: "Easier than a box meal, this creamy tomato and spinach pasta is also more flavorful and delicious. 100% real ingredients. Perfect for busy weeknights! ",
//                   image: "https://www.budgetbytes.com/wp-content/uploads/2013/07/Creamy-Spinach-Tomato-Pasta-bowl.jpg",
//                   recipe:  """
//                            1. Bring a large pot of water to a boil over high heat. Add the pasta and continue to boil until tender (7-10 minutes). Drain the pasta in a colander.
//                            2. While the pasta is cooking, prepare the creamy tomato sauce. Dice the onion and mince the garlic. Add the onion, garlic, and olive oil to a large skillet and sauté over medium heat until the onions are soft and translucent (3-5 minutes).
//                            3. Add the diced tomatoes (with juices), oregano, basil, crushed red pepper, salt, and some freshly cracked pepper to the skillet. Stir to combine. Add the tomato paste and a 1/2 cup of water to the skillet and stir until the tomato paste has mixed into the sauce.
//                            4. Turn the heat down to low. Cut the cream cheese into a few pieces and then add them to the skillet with the tomato sauce. Use a whisk to stir the sauce until the cream cheese has fully melted and the sauce is creamy. Add the Parmesan to the skillet and stir until it is melted into the sauce.
//                            5. Add the fresh spinach to the skillet and gently stir it into the sauce until it has wilted (2-3 minutes). Add the pasta and stir until it is well coated in the creamy tomato sauce. Taste and adjust the salt and pepper as needed. Serve warm.
//                            """,
//                   ingredients: """
//                                1/2 lb. penne pasta ($0.75)
//                                1 yellow onion ($0.28)
//                                2 cloves garlic ($0.16)
//                                1 Tbsp olive oil ($0.16)
//                                1 15oz. can diced tomatoes ($0.59)
//                                1/2 tsp dried oregano ($0.05)
//                                1/2 tsp dried basil ($0.05)
//                                1 pinch crushed red pepper (optional) ($0.02)
//                                1/2 tsp salt ($0.02)
//                                freshly cracked black pepper to taste ($0.03)
//                                2 Tbsp tomato paste ($0.08)
//                                2 oz. cream cheese ($0.20)
//                                1/4 cup grated Parmesan ($0.31)
//                                4 oz. fresh spinach ($0.65)
//                                """,
//                   idNumber: "3")
//
//let entry4 = Entry(title: "Pepperoni Pizza",
//                   description: "Tons of pepperoni, a nice crust, great flavor.",
//                   story: "This Homemade Pepperoni Pizza has everything you want—a great crust, gooey cheese, and tons of pepperoni. The secret to great pepperoni flavor? Hide extra under the cheese! Who needs delivery?",
//                   image: "https://media.istockphoto.com/photos/tasty-pepperoni-pizza-and-cooking-ingredients-tomatoes-basil-on-black-picture-id1083487948?k=6&m=1083487948&s=612x612&w=0&h=lK-mtDHXA4aQecZlU-KJuAlN9Yjgn3vmV2zz5MMN7e4=",
//                   recipe:      """
//                                1. Preheat the oven:
//                                Preheat oven to 500°F. If you are using a pizza stone, preheat it in the oven for at least 20 minutes so it is nice and hot as well.
//
//                                2. Make the sauce:
//                                If you are using my sauce recipe, stir together the ingredients. The sauce recipe makes just enough for one large pizza. You can easily double it if you are making more than one pizza.
//
//                                Make homemade pizza sauce for easy pepperoni pizza
//                                3. Roll out the dough:
//                                Roll out dough on a lightly floured surface. If it's hard to roll, let it rest for 5 minutes so it can come to room temperature. For a large pizza, I like to roll my dough into about a 14-inch diameter circle.
//
//                                Two balls of homemade pizza dough
//                                4. Add the toppings:
//                                Transfer the dough to a lightly dusted pizza peel. Alternatively, fit it into a large cast-iron.
//
//                                Add sauce in a light layer all over the pizza, leaving about 1/4-inch crust around the edges. Chop half of the pepperoni and sprinkle it over the sauce. Top the pizza with grated cheese and the rest of the pepperoni. Season with black pepper.
//
//                                Homemade Pizza Dough and Sauce
//                                Put slices of pepperoni under the cheese layer on your homemade pepperoni pizza
//                                Assembling homemade pepperoni pizza
//                                5. Cook the pizza:
//                                If you're using a pizza stone, carefully slide pizza into the center of the preheated pizza stone. Cook for 6 minutes, then rotate the pizza halfway so it cooks evenly. Cook for another 6-8 minutes, or until the crust is golden brown and charred in spots.
//
//                                If you're using a skillet, press the dough into a cast iron skillet and add toppings. Place the skillet over a high heat burner for 2 minutes to get it preheated and get the crust cooking right away. Then transfer to a 500 ̊F oven and bake for 10 to 12 minutes, or until the crust is golden brown.
//
//                                6. Slice and serve:
//                                Use pizza peel to slide pizza out onto a cutting board. Let the pizza rest for a minute and slice into pieces. Season with fresh oregano (optional). Serve while warm with a side salad.
//                                """,
//                   ingredients: """
//                                16 ounces pizza dough, store-bought or homemade (I like this no-knead version, though note that this recipe makes enough dough for 2 pizzas)
//                                1/2 cup pizza sauce (see below)
//                                18-20 slices pepperoni
//                                12 ounces mozzarella cheese, grated
//                                1/2 teaspoon ground black pepper
//                                1 teaspoon fresh oregano, optional
//                                Flour for rolling and shaping dough
//                                For the Quick Pizza Sauce:
//                                1/2 cup tomato sauce (no salt)
//                                1/2 teaspoon kosher salt
//                                1/2 teaspoon ground black pepper
//                                1/2 teaspoon granulated garlic
//                                1/2 teaspoon granulated onion
//                                1/4 teaspoon red pepper flakes
//                                1 teaspoon olive oil
//                                """,
//                   idNumber: "4")
//
//let entry5 = Entry(title: "Butter Chicken Curry",
//                   description: "Mild yet full of flavor!",
//                   story: "This is the perfect weeknight curry — it's primarily comprised of ingredients you probably already have on hand: chicken, onions, garlic, pantry spices, heavy cream, and canned tomatoes. Not a spice lover? All good; while there are a lot of warm ground spices that season the dish, this curry isn't spicy at all. ",
//                   image: "https://gimmedelicious.com/wp-content/uploads/2020/01/30-Minute-Instant-Pot-Butter-Chicken-7.jpg",
//                   recipe:      """
//                                1. In a large pot over medium-high heat, heat oil. Add onion and cook until soft, 5 minutes. Add chicken and sear until no pink remains, 5 minutes. Stir in garlic and ginger and cook until fragrant, 1 minute.
//                                2. Add spices and cook until very fragrant, 1 minute. Add tomatoes and broth and bring to a simmer. Stir in heavy cream, and season with salt and pepper. Simmer until chicken pieces are cooked through and tender, about 15 to 20 minutes.
//                                3. Serve over rice or with naan, garnished with cilantro.
//                                """,
//                   ingredients: """
//                                2 tbsp. extra-virgin olive oil
//                                1 medium yellow onion, chopped
//                                2 lb. boneless skinless chicken breasts, cut into 1" pieces
//                                3 cloves garlic, minced
//                                1 tbsp. minced ginger
//                                1 1/2 tsp. paprika
//                                1 1/2 tsp. ground turmeric
//                                1 1/2 tsp. ground coriander
//                                1 tsp. ground cumin
//                                1 (15-oz.) can crushed tomatoes
//                                1 1/2 c. low-sodium chicken broth
//                                1/2 c. heavy cream
//                                Kosher salt
//                                Freshly ground black pepper
//                                Basmati rice or naan, for serving
//                                1 tbsp. freshly chopped cilantro, for garnish
//                                """,
//                   idNumber: "5")




