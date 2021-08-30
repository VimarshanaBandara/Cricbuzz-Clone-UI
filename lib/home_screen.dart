import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(29, 224, 139, 10.0),
        actions: [
          Container(
            padding: EdgeInsets.all(10.0),
            width: 130.0,
            height: 80.0,
            child: Text('Cricbuzz',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0),),

          ),
          SizedBox(width: 150.0,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.settings,color: Colors.white,),
          )
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child:Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('FEATURED MATCHES',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Container(
                    height: 230.0,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection:Axis.horizontal,
                        itemCount: 3,
                        itemBuilder:(BuildContext context ,int index){
                          return Container(
                            width: 350.0,
                            child: Card(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.0,top:1.0),
                                    child: Row(
                                      children: [

                                        Text('1st ODI : Pakistan vs South Africa in UAE',style: TextStyle(color: Colors.grey),),
                                        IconButton(
                                          onPressed: (){},
                                          icon: Icon(Icons.notifications_none,color: Colors.grey,),
                                        )
                                      ],
                                    ),

                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 22.0),
                                    child:Row(
                                      children: [
                                        Container(
                                          height: 29.0,
                                          width: 29.0,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/ra.png'),

                                              )
                                          ),
                                        ),
                                        SizedBox(width: 25.0,),
                                        Text('302-8 (50)',style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 17.0,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child:Row(
                                      children: [
                                        Container(
                                          height: 36.0,
                                          width: 36.0,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/pk.png')
                                              )
                                          ),
                                        ),
                                        SizedBox(width: 25.0,),
                                        Text('174-5 (20)',style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15.0,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child:Row(
                                      children: [
                                        Text('Pakistan need 128 runs for win',style: TextStyle(color: Colors.red,fontSize: 13.0,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Container(
                                    height: 50.0,
                                    width: 350.0,
                                    color: Colors.grey[200],
                                    padding: EdgeInsets.fromLTRB(200.0, 20.0, 0.0, 0.0),
                                    child: GestureDetector(
                                      child: Text('SCHEDULE',style:TextStyle(color: Colors.grey,fontSize: 15.0) ,),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          );
                        }

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0,top: 15.0),
                    child: Row(


                      children: [
                        Text('FEATURED VIDEOS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 220.0,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context , int Index){
                            return Container(
                              width: 300.0,
                              child: Card(
                                   child: Stack(
                                     children: [
                                       Container(
                                         height: 220.0,
                                         width: 300.0,
                                         decoration: BoxDecoration(
                                           image: DecorationImage(
                                             image: AssetImage('images/image02.jpg'),
                                             fit: BoxFit.cover
                                           )
                                         ),
                                       ),
                                       Positioned(
                                         child: Center(
                                           child: Container(
                                             height: 50.0,
                                             width: 50.0,
                                             decoration: BoxDecoration(
                                               color: Colors.black87,
                                               borderRadius: BorderRadius.circular(50.0),
                                             ),
                                             child: IconButton(
                                               onPressed: (){},
                                               icon: Icon(Icons.play_arrow,color: Colors.white,),
                                             ),
                                           ),

                                         ),
                                       )
                                     ],
                                   ),
                              ),
                            );

                          },


                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.grey,),
            title: Text('Home',style: TextStyle(color: Colors.grey),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.group,color: Colors.grey,),
              title: Text('Matches',style: TextStyle(color: Colors.grey),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books,color: Colors.grey,),
              title: Text('News',style: TextStyle(color: Colors.grey),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video_outlined,color: Colors.grey,),
              title: Text('Videos',style: TextStyle(color: Colors.grey),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_vert,color: Colors.grey,),
              title: Text('More',style: TextStyle(color: Colors.grey),)
          )
        ],
      ) ,
    );
  }
}
