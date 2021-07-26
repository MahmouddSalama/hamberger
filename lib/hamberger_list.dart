import 'package:flutter/material.dart';
import 'burgerBage.dart';
class HambergerList extends StatefulWidget {
  final int row;

  const HambergerList({ required this.row});

  @override
  _HambergerListState createState() => _HambergerListState();
}

class _HambergerListState extends State<HambergerList> {

  int items = 10;
  @override
  Widget build(BuildContext context) {

    Widget hamburger=Container(
      child: Image.asset('images/klipartz.com.png'),
      height: 120,
    );
    Widget chikenburger=Container(

      child: Image.asset('images/pngegg (1).png'),
      height: 140,
    );
    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) {
              bool revers= widget.row==2?index.isEven:index.isOdd;
              return Stack(
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                    height: 240,
                    width: 200,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(Bageburger.tag);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45),
                        ),
                        ),
                        color: Colors.teal,
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            children: [
                              Text(
                                revers?'Beef Burger':'Chiken Burger',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    '15.5 \$ CAN',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Card(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(45),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(45),
                                              topRight: Radius.circular(45))),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.teal,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                      left: index.isEven?-20:-45,
                      child:GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(Bageburger.tag);
                        },
                          child: revers? hamburger:chikenburger,

                      )
                  ),
                ],
              );
            }),
      ),
    );
  }
}
