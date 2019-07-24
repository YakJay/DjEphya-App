import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

//import 'package:party_app/commons/Horizontal_ListView.dart';
import 'package:party_app/Components/gallery.dart';

//import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: new ThemeData(primaryColor: Colors.black),
    )
  );
}



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget Image_Carousel = new Container(
    height: 250.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [

        AssetImage('images/EphyaPic2.jpg'),
        AssetImage('images/EphyaPic3.jpg'),
        AssetImage('images/dj1.jpg'),
        AssetImage('images/EfyaPic1.jpg'),
        AssetImage('images/EphyaPic4.jpg'),
        AssetImage('images/EphyaPic5.jpg'),
        AssetImage('images/dj.jpg'),
        AssetImage('images/dj3.jpg'),
      ],
      autoplay: false,
      animationCurve: Curves.fastLinearToSlowEaseIn,
      animationDuration: Duration(milliseconds: 50),
      dotSize: 6.0,
      indicatorBgPadding: 10.0,
      
    ),
  );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Party App'),
        actions: <Widget>[

          //Icon Buttons On AppBar
          new IconButton(
            icon: Icon(
            Icons.search,
            color: Colors.white),
            
            onPressed: (){},),

            new IconButton(
            icon: Icon(
            Icons.notifications,
            color: Colors.white),
            
            onPressed: (){})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header Drawer
            new UserAccountsDrawerHeader(
              accountName: Text('DJ Ephya'),
              accountEmail: Text('tonnix10@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
              ),
//body
InkWell(
  onTap: (){

  },
  child:   ListTile(
  
    title: Text('Home'),
  
    leading: Icon(Icons.home, color: Colors.red,),
  
  ),
),

InkWell(
  onTap: (){

  },
  child:   ListTile(
  
    title: Text('Bookings'),
  
    leading: Icon(Icons.feedback, color: Colors.red,),
  
  ),
),

InkWell(
  onTap: (){

  },
  child:   ListTile(
  
    title: Text('Events and Shows'),
  
    leading: Icon(Icons.party_mode, color: Colors.red,),
  
  ),
),

InkWell(
  onTap: (){

  },
  child:   ListTile(
  
    title: Text('Live Listening'),
  
    leading: Icon(Icons.radio, color: Colors.red,),
  
  ),
),

InkWell(
  onTap: (){

  },
  child:   ListTile(
  
    title: Text('Achievements'),
  
    leading: Icon(Icons.announcement,color: Colors.red),
  
  ),
),

InkWell(
  onTap: (){

  },
  child:   ListTile(
  
    title: Text('Biography'),
  
    leading: Icon(Icons.person, color: Colors.red),
  
  ),
),

Divider(),

InkWell(
  onTap: (){

  },
  child:   ListTile(
  
    title: Text('Settings'),
  
    leading: Icon(Icons.settings, color: Colors.black),
  
  ),
),

InkWell(
  onTap: (){

  },
  child:   ListTile(
  
    title: Text('About'),
  
    leading: Icon(Icons.help, color: Colors.black,),
  
  ),
),

          ],
        ),
      ),
      //List View Widget Starts Here:
      body: new ListView(
        children: <Widget>[
          //Carousel Starts Here:
          Image_Carousel,

//Horizontal List View Starts Here:
         // new Padding(padding: const EdgeInsets.all(8.0),
         // child: new Text('Recent Mixtapes'),),

          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Gallery'),),

          //GridView


Container(
  height: 400.0,
  child: Gallery(),
)
          ],
      ),
      
    );
  }
}