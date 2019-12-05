import 'package:flutter/material.dart';
import 'package:todo/pages/local.page.dart';
import 'package:todo/pages/news.page.dart';
import 'package:todo/pages/perfil.page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey,
    appBar: AppBar(
      centerTitle: true,
      elevation: 1,
      title: Text("Home"),
    ),
    drawer: Drawer(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 56,
          ),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "TShirt",
                    style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.arrow_right),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HomePage())),
          ),
          ListTile(
            title: Text("Noticia"),
            trailing: Icon(Icons.arrow_right),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => NewsPage())),
          ),
          ListTile(
            title: Text("Local"),
            trailing: Icon(Icons.arrow_right),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LocalPage())),
          ),
          ListTile(
            title: Text("Perfil"),
            trailing: Icon(Icons.arrow_right),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => PerfilPage())),
          ),
          ListTile(
            title: Text("Fechar"),
            trailing: Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    ),
    body: Center(
      
    ),
    bottomNavigationBar: BottomNavybar(),
    );
  }
}

class BottomNavybar extends StatefulWidget {
  @override
  State <StatefulWidget> createState(){
    return _BottomNavybarState();
  }
}

class _BottomNavybarState extends State<BottomNavybar> {
 int selectedIndex = 0;
 Color backgroundColor = Colors.grey;

 List<NavigationItem> items = [
   
   NavigationItem(
    IconButton(
    icon: Icon(
    Icons.home,
      color: Colors.black,
    ),
    onPressed: () {},
    ),
    Text("Home"),
   ),

   NavigationItem(
    IconButton(
    icon: Icon(
    Icons.notifications,
      color: Colors.black,
    ),
    onPressed: () {},
    ),
    Text("Noticia"),
   ),

   NavigationItem(
    IconButton(
    icon: Icon(
    Icons.location_on,
    color: Colors.black,
    ),
    onPressed: () {},
    ),
    Text("Local"),
    ),

   NavigationItem(
    IconButton(
    icon: Icon(
    Icons.person,
      color: Colors.black,
    ),
    onPressed: () {},
    ),
    Text("Perfil"),
   ),

 ];


 Widget _buildItem(NavigationItem item, bool isSelected){
   return AnimatedContainer(
     duration: Duration(milliseconds: 270),
     height: double.maxFinite,
     width: isSelected ? 125 : 50,
     padding: isSelected ? 
     EdgeInsets.only(left: 16, right: 16) :
     null ,
     decoration: isSelected ? BoxDecoration(
       color:  Colors.black38,
       borderRadius: BorderRadius.all(Radius.circular(50))
     ): null,
     child: ListView(
       scrollDirection: Axis.horizontal,
     children: <Widget>[
       Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
          IconTheme(
            data: IconThemeData(
              size: 28,
              color: isSelected ? backgroundColor : Colors.black
            ),
            child: item.icon,
           ), Padding(
          padding: const EdgeInsets.only(left: 9),
          child: isSelected ? 
          DefaultTextStyle.merge(
            style: TextStyle(
            color: Colors.black
            ),
            child: item.title
          ) : Container(),
          ),
         ],
       )
     ],
     ),
   );
  }

   @override
   Widget build(BuildContext context) {
     return Container(
      height: 56,
      padding: EdgeInsets.only(left: 8, top: 4, bottom: 4, right: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: [
         BoxShadow(
           color: Colors.black12,
           blurRadius: 4
         )
        ]
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.map((item){
          var itemIndex = items.indexOf(item);
          return GestureDetector(
            onTap: (){
             setState(() {
               selectedIndex = itemIndex;
             });
            },
            child: _buildItem(item, selectedIndex == itemIndex ),
          );
        }).toList(),
      ),
     );
   }
 }
 
 class NavigationItem {
  final IconButton icon;
  final Text title;
  NavigationItem(this.icon, this.title, );
}


