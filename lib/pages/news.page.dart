import 'package:flutter/material.dart';
import 'package:todo/pages/car.page.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Noticias"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
                    Container(
                      color: Colors.black26,
                        child: ListTile(
                        title: Text(
                          "Camisa Quebrada fc",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          "Promoção",
                        ),
                        selected: true,
                        trailing: IconButton(
                        icon: Icon(
                        Icons.add_shopping_cart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CarPage(),
                            ),
                          );
                        },
                        ),
                      ),
                    ),
                    Container(
                     color: Colors.black26,
                     child: ListTile(
                        title: Text(
                          "Camisa Cachoeira fc",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          "Promoção",
                        ),
                        selected: true,
                        trailing: IconButton(
                        icon: Icon(
                        Icons.add_shopping_cart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CarPage(),
                            ),
                          );
                        },
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                        child:  ListTile(
                        title: Text(
                          "Camisa Bar sem lona",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          "Promoção",
                        ),
                        selected: true,
                        trailing: IconButton(
                        icon: Icon(
                        Icons.add_shopping_cart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CarPage(),
                            ),
                          );
                        },
                        ),
                      ),
                    ),
                     Container(
                      color: Colors.black26,
                        child:  ListTile(
                        title: Text(
                          "Camisa Imperial taqua",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          "Promoção",
                        ),
                        selected: true,
                        trailing: IconButton(
                        icon: Icon(
                        Icons.add_shopping_cart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CarPage(),
                            ),
                          );
                        },
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