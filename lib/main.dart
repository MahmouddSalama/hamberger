import 'package:flutter/material.dart';
import 'header.dart';
import 'category.dart';
import 'hamberger_list.dart';
import 'burgerBage.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.teal),
          bottomAppBarColor: Colors.teal,
          floatingActionButtonTheme:FloatingActionButtonThemeData(
            backgroundColor: Colors.orangeAccent
          ),
      ),
      debugShowCheckedModeBanner: false,
      home: Hamberger(),
      routes: {
        Bageburger.tag:(_)=>Bageburger(),
      },
    );
  }
}

class Hamberger extends StatefulWidget {
  @override
  _HambergerState createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          centerTitle: true,
          title: Text('Deviver Me'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.of(context).pushNamed(Bageburger.tag);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).pushNamed(Bageburger.tag);
              },
            ),
          ],
        ),
        Header(),
        Category(),
        HambergerList(row: 1,),
        HambergerList(row: 2,),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  Navigator.of(context).pushNamed(Bageburger.tag);},
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {  Navigator.of(context).pushNamed(Bageburger.tag);},
                  icon: Icon(
                    Icons.add_alert,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  onPressed: () {  Navigator.of(context).pushNamed(Bageburger.tag);},
                  icon: Icon(
                    Icons.turned_in,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
