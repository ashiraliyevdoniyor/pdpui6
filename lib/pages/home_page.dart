import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/hotels.jpg"),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.4),
                        ],
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 70),
                      Text('Best Hotels Ever',style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,color: Colors.grey,),
                            hintText: "Search for hotels...",hintStyle: TextStyle(color: Colors.grey[400])
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,

              child:Text('Business Hotels',style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,)),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _makeItem(image: "assets/images/hotel4.jpg",title: "Hotel 1"),
                  _makeItem(image: "assets/images/hotel3.jpg",title: "Hotel 2"),
                  _makeItem(image: "assets/images/hotel2.jpg",title: "Hotel 3"),
                  _makeItem(image: "assets/images/hotel5.jpg",title: "Hotel 4"),
                ],
              ),
            ),

            //Airport Hotels
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,

              child:Text('Airport Hotels',style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,)),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _makeItem(image: "assets/images/hotel2.jpg",title: "Hotel 2"),
                 ],
              ),
            ),


            //Resort Hotels
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,

              child:Text('Resort Hotels',style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,)),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _makeItem(image: "assets/images/hotel3.jpg",title: "Hotel 1"),
                  _makeItem(image: "assets/images/hotel5.jpg",title: "Hotel 2"),
                  _makeItem(image: "assets/images/hotel2.jpg",title: "Hotel 3"),
                  _makeItem(image: "assets/images/hotel4.jpg",title: "Hotel 4"),
                ],
              ),
            ),


            //Kesh Hotels
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,

              child:Text('Kesh Hotels',style: TextStyle(color: Colors.grey[500],fontSize: 20,fontWeight: FontWeight.bold,)),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _makeItem(image: "assets/images/hotel5.jpg",title: "Hotel 1"),
                  _makeItem(image: "assets/images/hotel3.jpg",title: "Hotel 2"),
                  _makeItem(image: "assets/images/hotel4.jpg",title: "Hotel 3"),
                ],
              ),
            ),



          ],
        ),
      )
    );
  }
}

Widget _makeItem({image,String title=""}){
  return AspectRatio(
  aspectRatio: 2/1.9,
  child: Container(
    margin: EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover
      )
    ),
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin:Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.2),
          ]
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style: TextStyle(color: Colors.white,fontSize: 22),),
              SizedBox(width: 30),
              Icon(CupertinoIcons.heart_fill,color: Colors.red)
            ],
          )
        ],
      )
    ),
  ),
  );
}
