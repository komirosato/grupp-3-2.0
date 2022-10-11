import 'package:flutter/material.dart';
import 'package:template/drinkView.dart';
import 'package:template/model.dart';
import 'package:template/widgets.dart';
import '';

class SearchTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          searchHeaderMenu(),
          
          Padding(padding: EdgeInsets.all(10) ,child: drinkItemSmall(testlista[0])),
          
        ],
      ),
    );
  }


Widget searchHeaderMenu() {
  return Material(
            elevation: 3,
            child: Container(
                height: 40,
                color: const Color.fromRGBO(243, 243, 243, 1),
                child: Center(
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField( //Sätta denna inom en ROW för att lägga till icon framför?
                            textAlign: TextAlign.center,
                            decoration: 
                                InputDecoration(
                                  hintText: "Search drink or ingredient...",
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search))
                                ),
                      ),
                      _popMenu(),
                    ],
                  ),
                )),
          );
}
}

Widget _popMenu() {
    return PopupMenuButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
        onSelected: (value) {},
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              //BYT VÄRDEN!!!!!!!
              child: Text("All"),
              value: "all",
            ),
            PopupMenuItem(
              child: Text("Favourites"),
              value: "done",
            ),
            PopupMenuItem(
              child: Text("% Free"),
              value: "undone",
            ),
          ];
        });
  }
