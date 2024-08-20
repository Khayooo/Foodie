import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class Restaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: restaurantAvailable(context),
    );
  }
}

Widget restaurantAvailable(
  BuildContext context,
) {
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
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Restaurants Near you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    itemCount: restaurantList.length;
                    itemBuilder: (context, index) {
                    return itemBuilder(he, context, index);
                    };
                  }))
            ],
          ),
        )
      ],
    ),
  );
}


Widget itemBuilder(Size size, BuildContext context, int index){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
    child: GestureDetector(
      onTap: (){},
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: size.height/2.5,
          width: size.width/1.1,
          child: Column(
            children: [
            Container(
              height: size.height / 4,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
                image: DecorationImage(
                    image: NetworkImage(restaurantList[index].imageUrl),
                    fit: BoxFit.cover),
              ),
            )
            ],
          ),
        ),
      ),
    ),
  );
}