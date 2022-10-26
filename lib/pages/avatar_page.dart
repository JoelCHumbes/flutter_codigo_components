import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://cdn.lifehack.org/wp-content/uploads/2014/03/shutterstock_97566446.jpg",
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [

          FadeInImage(
             image: NetworkImage("https://cdn.lifehack.org/wp-content/uploads/2014/03/shutterstock_97566446.jpg"),
            placeholder: AssetImage("assets/image/loading.gif"),
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1300),
          ),


          //Image.network(
          //  "https://cdn.lifehack.org/wp-content/uploads/2014/03/shutterstock_97566446.jpg",
         // ),

         // Image.asset("assets/image/loading.gif"),
        ],
      ),
    );
  }
}
