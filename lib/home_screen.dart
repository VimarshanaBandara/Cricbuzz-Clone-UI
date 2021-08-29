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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('FEATURED MATCHES',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
