import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: ListView(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    color: Colors.orange,
                    onPressed: () {},
                  ),
                  Container(
                    width: 125,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.orange,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.orange,
                        onPressed: () {},
                      ),
                    ]),
                  )
                ],
              )),
          SizedBox(height: 20.0),
          Padding(
              padding: EdgeInsets.only(left: 35.0),
              child: Row(
                children: <Widget>[
                  Text('Daftar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25.0)),
                  SizedBox(width: 10.0),
                  Text('Makanan', style: TextStyle(color: Colors.white, fontSize: 25.0)),
                ],
              )),
          SizedBox(height: 40.0),
          Container(
              height: MediaQuery.of(context).size.height - 180.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                  75.0,
                )),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(
                          children: [
                            _buildFoodItem('assets/endog1.png', 'ndog', '\$42.00'),
                            _buildFoodItem('assets/endog1.png', 'ndog', '\$42.00'),
                            _buildFoodItem('assets/endog1.png', 'ndog', '\$42.00')
                          ],
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Icon(Icons.search, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Icon(Icons.shopping_basket, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 65.0,
                        width: 120.0,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1.0), borderRadius: BorderRadius.circular(10.0), color: Color(0xFF1C1428)),
                        child: Center(child: Text('Checkout', style: TextStyle(color: Colors.white, fontSize: 15.0))),
                      )
                    ],
                  ),
                ],
              ))
        ]));
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(tag: imgPath, child: Image(image: AssetImage(imgPath), fit: BoxFit.cover, height: 75.0, width: 75.0)),
                  SizedBox(width: 10.0),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(foodName, style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
                    Text(price, style: TextStyle(fontSize: 15.0, color: Colors.grey))
                  ])
                ])),
                IconButton(icon: Icon(Icons.add), color: Colors.black, onPressed: () {})
              ],
            )));
  }
}
