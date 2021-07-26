import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}
class _CategoryState extends State<Category> {
  int itemselected=0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    margin:
                    EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          itemselected=index;
                        });
                      },
                      child: Card(
                        color: itemselected==index?Colors.black:Colors.white,
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(
                          Icons.fastfood,
                          color:itemselected==index ?Colors.white: Colors.black54,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 20 : 0,
                    right: 20,
                  ),
                  width: 90,
                  child: Row(
                    children: [
                      Spacer(),
                      Text('Burger'),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
