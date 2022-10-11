import 'package:flutter/material.dart';
import 'package:template/homepage.dart';
import 'model.dart';


Widget headerMenu(text) {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Material(
          elevation: 3,
          child: Container(
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
              ),
            ),
            height: 40,
            color: const Color.fromARGB(243, 243, 243, 243),
          ),
        ),
      ),
    ],
  );
}

Widget drinkItemSmall(Drink drink) {
  return ListTile(
    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
    tileColor: Colors.amber,
    onTap: () {
    },
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: NetworkImage(
          "https://www.thecocktaildb.com/images/media/drink/metwgh1606770327.jpg"),
    ),
    title: Text(drink.name),
    subtitle: Text(drink.threeIngredients), //Om längre än 2 rader fixa ...
    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined), constraints: BoxConstraints(), padding: EdgeInsets.all(0),),
      IconButton(onPressed: () {}, icon: const Icon(Icons.add_shopping_cart),constraints: BoxConstraints()),
    ]),
  );
}

