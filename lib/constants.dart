import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const double kDefaultPadding = 16.0;

class FoodItems {
  String imageUrl, name;

  FoodItems({
    required this.imageUrl,
    required this.name,
  });
}

List<FoodItems> foodItemList = [
  FoodItems(
      name: "Healthy",
      imageUrl:
          "https://www.pikpng.com/pngl/m/327-3271979_half-a-pizza-transparent-background-clipart.png"),
  FoodItems(
      name: "Pizza",
      imageUrl:
          "https://www.pikpng.com/pngl/m/327-3271979_half-a-pizza-transparent-background-clipart.png"),
  FoodItems(
      name: "Burger",
      imageUrl:
          "https://www.pikpng.com/pngl/m/41-418681_free-png-download-burger-png-pics-png-images.png"),
  FoodItems(
      name: "Rolls",
      imageUrl:
          "https://icon2.cleanpng.com/20180715/yqy/kisspng-egg-roll-spring-roll-popiah-dim-sum-ch-gi-samosa-5b4bc356ab3951.3897352315316918627013.jpg"),
  FoodItems(
      name: "Biryani",
      imageUrl:
          "https://icon2.cleanpng.com/20180330/axe/kisspng-hyderabadi-biryani-indian-cuisine-dish-chicken-mea-biryani-5abedc42d00da9.6620510115224576668522.jpg"),
  FoodItems(
      name: "Paneer",
      imageUrl:
          "https://icon2.cleanpng.com/20180331/wxq/kisspng-mattar-paneer-indian-cuisine-shahi-paneer-palak-pa-indian-food-5abf1505113f64.7556672415224721970707.jpg"),
  FoodItems(
      name: "Chicken",
      imageUrl:
          "https://toppng.com/uploads/preview/fried-chicken-115400746154bqe3zcl5t.png"),
  FoodItems(
      name: "Healthy",
      imageUrl:
          "https://www.pikpng.com/pngl/m/327-3271979_half-a-pizza-transparent-background-clipart.png"),
  FoodItems(
      name: "Pizza",
      imageUrl:
          "https://www.pikpng.com/pngl/m/327-3271979_half-a-pizza-transparent-background-clipart.png"),
  FoodItems(
      name: "Burger",
      imageUrl:
          "https://www.pikpng.com/pngl/m/41-418681_free-png-download-burger-png-pics-png-images.png"),
  FoodItems(
      name: "Rolls",
      imageUrl:
          "https://icon2.cleanpng.com/20180715/yqy/kisspng-egg-roll-spring-roll-popiah-dim-sum-ch-gi-samosa-5b4bc356ab3951.3897352315316918627013.jpg"),
  FoodItems(
      name: "Biryani",
      imageUrl:
          "https://icon2.cleanpng.com/20180330/axe/kisspng-hyderabadi-biryani-indian-cuisine-dish-chicken-mea-biryani-5abedc42d00da9.6620510115224576668522.jpg"),
  FoodItems(
      name: "Paneer",
      imageUrl:
          "https://icon2.cleanpng.com/20180331/wxq/kisspng-mattar-paneer-indian-cuisine-shahi-paneer-palak-pa-indian-food-5abf1505113f64.7556672415224721970707.jpg"),
  FoodItems(
      name: "Chicken",
      imageUrl:
          "https://toppng.com/uploads/preview/fried-chicken-115400746154bqe3zcl5t.png"),
];

class Restaurants {
  String imageUrl, title, locations, rating, description, price;
  int id;

  Restaurants(
      {required this.imageUrl,
      required this.title,
      required this.id,
      required this.locations,
      required this.rating,
      required this.description,
      required this.price});
}

List<Restaurants> restaurantList = [
  Restaurants(
      title: "Om Sweet & Snacks",
      id: 1,
      locations: "North Indian",
      description:
          "Om Sweets and Snacks is a popular Indian hotel chain known for its authentic vegetarian cuisine, traditional sweets, and snacks. With a legacy spanning over 50 years, the restaurant prides itself on using only the freshest ingredients and traditional cooking techniques to create delicious dishes bursting with flavor. The warm and welcoming ambiance, combined with excellent customer service, makes it a favorite among locals and visitors alike. Whether you're in the mood for a quick snack or a hearty meal, Om Sweets and Snacks has something for everyone",
      price: "100",
      rating: "4.2",
      imageUrl:
          "https://images.aws.nestle.recipes/original/65f4b67b8cbea8a3cff7fe2e776a715a_orange_scented_gulab_jamun.jpg"),
  Restaurants(
    title: "The Masala Story",
    id: 2,
    locations: "North Indian, Mughlai, Kebab",
    description:
        "The Masala Story is a renowned Indian restaurant that offers a modern twist on classic Indian cuisine. With a focus on fresh, high-quality ingredients, The Masala Story creates dishes that are both flavorful and visually stunning. From traditional curries and tandoori specialties to innovative small plates and fusion dishes, the menu at The Masala Story offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "300",
    rating: "4.1",
    imageUrl:
        "https://c.ndtvimg.com/2020-01/a39okhfk_620_625x300_21_January_20.jpg",
  ),
  Restaurants(
    title: "Domino's Pizza",
    id: 3,
    locations: "Pizza, Fast Food",
    description:
        "Domino's Pizza is a popular pizza restaurant chain that offers a wide selection of delicious pizzas, sides, and desserts. With a focus on fresh, high-quality ingredients, Domino's Pizza creates pizzas that are both flavorful and visually stunning. From traditional pizzas to innovative fusion dishes, the menu at Domino's Pizza offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1-500x500.jpg",
  ),
  Restaurants(
    title: "MC Donald's",
    id: 4,
    locations: "Burger, Fast Food, Beverages",
    description:
        "McDonald's is a popular fast food restaurant chain that offers a wide selection of delicious burgers, sides, and desserts. With a focus on fresh, high-quality ingredients, McDonald's creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at McDonald's offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://www.newfoodmagazine.com/wp-content/uploads/mcdonalds.jpg",
  ),
  Restaurants(
    title: "Gohana Faous Jalebi",
    id: 5,
    locations: "Street Food, Mithai",
    description:
        "Gohana Famous Jalebi is a popular Indian sweet shop that offers a wide selection of delicious sweets and snacks. With a focus on fresh, high-quality ingredients, Gohana Famous Jalebi creates dishes that are both flavorful and visually stunning. From traditional sweets to innovative fusion dishes, the menu at Gohana Famous Jalebi offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "100",
    rating: "4.2",
    imageUrl: "https://images.indianexpress.com/2020/04/jalebis-759.jpg",
  ),
  Restaurants(
    title: "Burger King",
    id: 6,
    locations: "Burger, American, Desserts",
    description:
        "Burger King is a popular fast food restaurant chain that offers a wide selection of delicious burgers, sides, and desserts. With a focus on fresh, high-quality ingredients, Burger King creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at Burger King offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "150",
    rating: "4.2",
    imageUrl:
        "https://media1.s-nbcnews.com/j/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p_d9270c5c545b30ea094084c7f2342eb4.fit-2000w.jpg",
  ),
  Restaurants(
    title: "Haldiram's",
    id: 7,
    locations: "North Indian, Mithai, South Indian",
    description:
        "Haldiram's is a popular Indian restaurant chain that offers a wide selection of delicious sweets and snacks. With a focus on fresh, high-quality ingredients, Haldiram's creates dishes that are both flavorful and visually stunning. From traditional sweets to innovative fusion dishes, the menu at Haldiram's offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "100",
    rating: "4.0",
    imageUrl:
        "https://media.self.com/photos/5ebd7a636ed447b59b846244/4:3/w_2560%2Cc_limit/snack-plate.jpg",
  ),
  Restaurants(
      title: "Om Sweet & Snacks",
      id: 1,
      locations: "North Indian,  South Indian, Chinese",
      description:
          "Om Sweets and Snacks is a popular Indian hotel chain known for its authentic vegetarian cuisine, traditional sweets, and snacks. With a legacy spanning over 50 years, the restaurant prides itself on using only the freshest ingredients and traditional cooking techniques to create delicious dishes bursting with flavor. The warm and welcoming ambiance, combined with excellent customer service, makes it a favorite among locals and visitors alike. Whether you're in the mood for a quick snack or a hearty meal, Om Sweets and Snacks has something for everyone",
      price: "100",
      rating: "4.2",
      imageUrl:
          "https://images.aws.nestle.recipes/original/65f4b67b8cbea8a3cff7fe2e776a715a_orange_scented_gulab_jamun.jpg"),
  Restaurants(
    title: "The Masala Story",
    id: 2,
    locations: "North Indian, Mughlai, Kebab",
    description:
        "The Masala Story is a renowned Indian restaurant that offers a modern twist on classic Indian cuisine. With a focus on fresh, high-quality ingredients, The Masala Story creates dishes that are both flavorful and visually stunning. From traditional curries and tandoori specialties to innovative small plates and fusion dishes, the menu at The Masala Story offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "300",
    rating: "4.1",
    imageUrl:
        "https://c.ndtvimg.com/2020-01/a39okhfk_620_625x300_21_January_20.jpg",
  ),
  Restaurants(
    title: "Domino's Pizza",
    id: 3,
    locations: "Pizza, Fast Food",
    description:
        "Domino's Pizza is a popular pizza restaurant chain that offers a wide selection of delicious pizzas, sides, and desserts. With a focus on fresh, high-quality ingredients, Domino's Pizza creates pizzas that are both flavorful and visually stunning. From traditional pizzas to innovative fusion dishes, the menu at Domino's Pizza offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1-500x500.jpg",
  ),
  Restaurants(
    title: "MC Donald's",
    id: 4,
    locations: "Burger, Fast Food, Beverages",
    description:
        "McDonald's is a popular fast food restaurant chain that offers a wide selection of delicious burgers, sides, and desserts. With a focus on fresh, high-quality ingredients, McDonald's creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at McDonald's offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://www.newfoodmagazine.com/wp-content/uploads/mcdonalds.jpg",
  ),
  Restaurants(
    title: "Gohana Faous Jalebi",
    id: 5,
    locations: "Street Food, Mithai",
    description:
        "Gohana Famous Jalebi is a popular Indian sweet shop that offers a wide selection of delicious sweets and snacks. With a focus on fresh, high-quality ingredients, Gohana Famous Jalebi creates dishes that are both flavorful and visually stunning. From traditional sweets to innovative fusion dishes, the menu at Gohana Famous Jalebi offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "100",
    rating: "4.2",
    imageUrl: "https://images.indianexpress.com/2020/04/jalebis-759.jpg",
  ),
  Restaurants(
    title: "Burger King",
    id: 6,
    locations: "Burger, American, Desserts",
    description:
        "Burger King is a popular fast food restaurant chain that offers a wide selection of delicious burgers, sides, and desserts. With a focus on fresh, high-quality ingredients, Burger King creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at Burger King offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "150",
    rating: "4.2",
    imageUrl:
        "https://media1.s-nbcnews.com/j/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p_d9270c5c545b30ea094084c7f2342eb4.fit-2000w.jpg",
  ),
  Restaurants(
    title: "Haldiram's",
    id: 7,
    locations: "North Indian, Mithai, South Indian",
    description:
        "Haldiram's is a popular Indian restaurant chain that offers a wide selection of delicious sweets and snacks. With a focus on fresh, high-quality ingredients, Haldiram's creates dishes that are both flavorful and visually stunning. From traditional sweets to innovative fusion dishes, the menu at Haldiram's offers something for every palate. The restaurant's contemporary yet inviting ambiance, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: "100",
    rating: "4.0",
    imageUrl:
        "https://media.self.com/photos/5ebd7a636ed447b59b846244/4:3/w_2560%2Cc_limit/snack-plate.jpg",
  ),
];

class Restaurants1 {
  String title, price, category;

  Restaurants1(
      {required this.title, required this.price, required this.category});
}

List<Restaurants1> restaurantList1 = [
  Restaurants1(
    category: "Om Sweet & Snacks",
    title: "Jalebi",
    price: "50",
  ),
  Restaurants1(
    category: "Om Sweet & Snacks",
    title: "Rasgulla",
    price: "100",
  ),
  Restaurants1(
    category: "Om Sweet & Snacks",
    title: "Rasmalai",
    price: "100",
  ),
  Restaurants1(
    category: "Om Sweet & Snacks",
    title: "Gulab Jamun",
    price: "70",
  ),
  Restaurants1(
    category: "Om Sweet & Snacks",
    title: "Besan Ladoo",
    price: "160",
  ),
  Restaurants1(
    category: "Om Sweet & Snacks",
    title: "Kaju Katli",
    price: "200",
  ),
  Restaurants1(
    category: "Om Sweet & Snacks",
    title: "Rava Ladoo",
    price: "160",
  ),
  Restaurants1(
    category: "Om Sweet & Snacks",
    title: "Moong Dal Halwa",
    price: "200",
  ),
  Restaurants1(category: "Burger King", title: "Veg Burger", price: "150"),
  Restaurants1(category: "Burger King", title: "Chicken Burger", price: "250"),
  Restaurants1(category: "Burger King", title: "Paneer Burger", price: "250"),
  Restaurants1(category: "Burger King", title: "Veg Burger", price: "350"),
  Restaurants1(category: "Burger King", title: "Chicken Burger", price: "250"),
  Restaurants1(category: "Burger King", title: "Paneer Burger", price: "250"),
  Restaurants1(
      category: "The Masala Story", title: "Chicken Seekh Kebab", price: "300"),
  Restaurants1(
      category: "The Masala Story", title: "Mutton Seekh Kebab", price: "350"),
  Restaurants1(
      category: "The Masala Story", title: "Paneer Tikka Kebab", price: "280"),
  Restaurants1(
      category: "The Masala Story",
      title: "Hariyali Chicken Kebab",
      price: "320"),
  Restaurants1(
      category: "The Masala Story", title: "Malai Kebab", price: "330"),
  Restaurants1(
      category: "The Masala Story", title: "Reshmi Kebab", price: "340"),
  Restaurants1(
      category: "Domino's Pizza", title: "Margherita Pizza", price: "300"),
  Restaurants1(
      category: "Domino's Pizza", title: "Pepperoni Pizza", price: "400"),
  Restaurants1(
      category: "Domino's Pizza", title: "Farmhouse Pizza", price: "350"),
  Restaurants1(
      category: "Domino's Pizza",
      title: "Veg Extravaganza Pizza",
      price: "380"),
  Restaurants1(
      category: "Domino's Pizza", title: "BBQ Chicken Pizza", price: "420"),
  Restaurants1(
      category: "Domino's Pizza",
      title: "Mexican Green Wave Pizza",
      price: "360"),
  Restaurants1(category: "McDonald's", title: "Big Mac", price: "350"),
  Restaurants1(category: "McDonald's", title: "McChicken", price: "300"),
  Restaurants1(category: "McDonald's", title: "Filet-O-Fish", price: "320"),
  Restaurants1(category: "McDonald's", title: "McVeggie", price: "280"),
  Restaurants1(category: "McDonald's", title: "McAloo Tikki", price: "250"),
  Restaurants1(
      category: "McDonald's", title: "Double Cheeseburger", price: "370"),
  Restaurants1(
      category: "Gohana Famous Jalebi", title: "Classic Jalebi", price: "200"),
  Restaurants1(
      category: "Gohana Famous Jalebi", title: "Rabri Jalebi", price: "250"),
  Restaurants1(
      category: "Gohana Famous Jalebi",
      title: "Desi Ghee Jalebi",
      price: "300"),
  Restaurants1(
      category: "Gohana Famous Jalebi", title: "Kesar Jalebi", price: "280"),
  Restaurants1(
      category: "Gohana Famous Jalebi", title: "Mini Jalebi", price: "150"),
  Restaurants1(
      category: "Gohana Famous Jalebi", title: "Stuffed Jalebi", price: "350"),
  Restaurants1(category: "Haldiram's", title: "Raj Kachori", price: "180"),
  Restaurants1(category: "Haldiram's", title: "Pav Bhaji", price: "220"),
  Restaurants1(category: "Haldiram's", title: "Chole Bhature", price: "200"),
  Restaurants1(category: "Haldiram's", title: "Dhokla", price: "150"),
  Restaurants1(category: "Haldiram's", title: "Aloo Tikki", price: "120"),
  Restaurants1(
      category: "Haldiram's", title: "Paneer Tikka Roll", price: "250"),
];
