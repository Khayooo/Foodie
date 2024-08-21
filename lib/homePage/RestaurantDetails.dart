import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class RestaurantDetails extends StatelessWidget {
  final int index;
  const RestaurantDetails({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          height: 70,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(.23),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Order Now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: MainScreen(index: index),
      
    );
  }
}

class MainScreen extends StatelessWidget {
  final int index;
  const MainScreen({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 50),
      height: he.height,
      width: he.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 83, 69, 164),
            const Color.fromARGB(255, 66, 53, 165).withOpacity(.8),
            const Color.fromARGB(255, 75, 53, 165).withOpacity(.6),
            const Color.fromARGB(255, 121, 112, 159).withOpacity(.4),
            const Color.fromARGB(255, 70, 53, 165).withOpacity(.2),
            const Color(0xFF6F35A5).withOpacity(.1),
            const Color(0xFF6F35A5).withOpacity(.05),
            const Color(0xFF6F35A5).withOpacity(.025),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopImage(index: index),
            Rating(index: index),
            FOodDescription(index: index),
            MenuItems(index: index),
          ],
        ),
      ),
    );
  }
}

class TopImage extends StatefulWidget {
  final int index;
  const TopImage({super.key, required this.index});

  @override
  State<TopImage> createState() => _TopImageState();
}

class _TopImageState extends State<TopImage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size;
    return Container(
      height: he.height * 0.3,
      width: he.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        image: DecorationImage(
            image: NetworkImage(restaurantList[widget.index].imageUrl),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 20,
              left: 20,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 28,
                    color: kPrimaryColor,
                  ))),
          Positioned(
              top: 20,
              right: 20,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    size: 28,
                    color: kPrimaryColor,
                  ))),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurantList[widget.index].title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  restaurantList[widget.index].locations,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Rating extends StatelessWidget{
  final int index;
  const Rating({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size;
   return Container(
     padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
     height: he.height * .1,
     width: he.width,
     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
             restaurantList[index].rating,
             style: const TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontWeight: FontWeight.w500,
             ),
           ),
           const Text(
             "Rating",
             style: TextStyle(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w500,
             ),
           ),
         ],
       ),
       Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           const SizedBox(height: 15),
           Text(
             "${restaurantList[index].price} for one",
             style: const TextStyle(
               color: Colors.blueGrey,
               fontSize: 16,
               fontWeight: FontWeight.w500,
             ),
           ),
           const Text(
             "Delivery Time: 30 min",
             style: TextStyle(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w500,
             ),
           ),
         ],
       ),
     ]),
   );
  }

}

class FOodDescription extends StatefulWidget {
  final int index;
  const FOodDescription({super.key, required this.index});

  @override
  State<FOodDescription> createState() => _FOodDescriptionState();
}

class _FOodDescriptionState extends State<FOodDescription>
    with SingleTickerProviderStateMixin {
  bool _showFullText = false;

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      width: he.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: ConstrainedBox(
              constraints: _showFullText
                  ? const BoxConstraints()
                  : const BoxConstraints(maxHeight: 50),
              child: Text(
                restaurantList[widget.index].description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return TextButton(
        onPressed: () {
          setState(() {
            _showFullText = !_showFullText;
          });
        },
        child: Text(_showFullText ? "Show less" : "Show more"));
  }
}

class  MenuItems extends StatefulWidget{
  final int index;

  const MenuItems({super.key, required this.index});
  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  List<Restaurants1> _differnetDishes = [] ;
  bool _onClick= true;
  @override
  void initState() {
var categoryName = restaurantList[widget.index].title;

_differnetDishes= restaurantList1.where((item) => item.category == categoryName).toList();

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
return Column(
  children: [
    Container(
      padding: const EdgeInsets.only(top: 6, left: 25, right: 25),
      height: size.height * 0.06,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Menu",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          Text(
            "View all",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.black,
          ),
        ],
      ),
    ),

    for (int i = 0; i < _differnetDishes.length; i++)
      Container(
      padding: const EdgeInsets.only(top: 6, left: 25, right: 25),
      height: size.height * 0.06,
      width: size.width,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.01),
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(_differnetDishes[i].title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )),
          Row(
            children: [
              Text(
                _differnetDishes[i].price,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: (){
                _onClick = !_onClick;
               setState(() {
               });         },
                icon: _onClick
                    ?
                Icon(
                  Icons.check_box_outlined,
                  color: Colors.green,
                ) :  Icon(
                  Icons.check_box_outline_blank,
                  color: Colors.black,
                ), )
            ],
          ),

        ],
      ),
    )
  ],
);
  }
}
