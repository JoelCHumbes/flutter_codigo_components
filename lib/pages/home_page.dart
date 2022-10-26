import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_components/pages/alert_page.dart';
import 'package:flutter_codigo_components/pages/avatar_page.dart';
import 'package:flutter_codigo_components/pages/cards_page.dart';
import 'package:flutter_codigo_components/pages/grid_page.dart';
import 'package:flutter_codigo_components/pages/input_page.dart';
import 'package:flutter_codigo_components/pages/list_page.dart';
import 'package:flutter_codigo_components/pages/selection_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 18.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg",
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.20),
                      offset: Offset(5, 5),
                      blurRadius: 12,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(
                width: 150.0,
                child: Divider(
                  color: Colors.black12,
                  height: 20,
                ),
              ),
              ItemComponet(title: "Avatar", toPage: AvatarPage()),
              ItemComponet(title: "Alerts", toPage: AlertPage()),
              ItemComponet(title: "Cards",  toPage: CardsPage()),
              ItemComponet(title: "Input", toPage:InputPage()),
              ItemComponet(title: "Selection", toPage:SelectionPage()),
              ItemComponet(title: "List", toPage:ListPage()),
              ItemComponet(title: "Grid View", toPage:GridPage()),

            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponet extends StatelessWidget {

  String title;
  Widget toPage;

  ItemComponet({required this.title , required this.toPage});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(5, 10),
          ),
        ],
      ),
      child: ListTile(
        onTap: (){
          
          Navigator.push(context, MaterialPageRoute(builder: (context)=> toPage));
          
        },
        leading: Icon(Icons.check_circle_outline_outlined),
        title: Text(
          title,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          "Ir al detalle del $title",
          style: GoogleFonts.poppins(),
        ),
        trailing: Icon(Icons.keyboard_arrow_right_sharp),
      ),
    );
  }
}
