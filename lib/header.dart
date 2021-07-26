import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate([
        Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  height: size.height / 5,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(45)),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          offset: Offset(1, 1),
                        )
                      ]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white70,
                            radius: 30,
                            backgroundImage: AssetImage('images/hugo-27.png'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Text(
                                'Welcome Jack',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 24),
                                child: Text(
                                  'Gold Member',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30)),
                                width: 125,
                                height: 15,
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            '145 \$ CAN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 45,
                width: size.width,
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 3,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'What does you belly to eat ?',
                      contentPadding: EdgeInsets.only(left: 20),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

      ]),
    );
  }
}
