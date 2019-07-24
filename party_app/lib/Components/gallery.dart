
import 'package:flutter/material.dart';
//import 'package:party_app/Components/gallery.dart';
import 'package:party_app/pages/gallery_details.dart';


class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
var Gallery_List = [
  {
    "artist Name": "Dj Ephya",
    "picture": "images/dj3.jpg",
    "title": "Part Mix",
    "date Released": "20th June,2019",
  },
  {
    "artist Name": "Dj Ephya",
    "picture": "images/dj.jpg",
    "title": "Part Mix",
    "date Released": "20th June,2019",
  },
  
  
];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Gallery_List.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1),
        itemBuilder: (BuildContext contest, int index){
          return Single_Gallery(
            artist:Gallery_List[index]['artist Name'],
            picture:Gallery_List[index]['picture'],
            title:Gallery_List[index]['title'],
            date: Gallery_List[index]['date released'],
          );
        });
  }
}

class Single_Gallery extends StatelessWidget {
  final artist;
  final picture;
  final title;
  final date;

  Single_Gallery({
    this.artist, this.picture,this.title,  this.date
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
      tag: artist, 
      child: Material(
      child: InkWell(
        onTap: ()=>
        Navigator.of(context).push(
          new MaterialPageRoute(builder: (context) => new Gallery_Details())),
      child: GridTile(
        footer: Container(
          color: Colors.white,
          child: ListTile(
            leading: Text(artist, style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        child: Image.asset(picture,
        fit: BoxFit.cover,)),

        ),
        ),),
    );
  }
}