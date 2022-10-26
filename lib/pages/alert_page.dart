import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  primerAlert(BuildContext mandarina) {
    showDialog(
      context: mandarina,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Titulo de Alert.."),
          content: Text("Contenido..."),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Registrar",
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancelar",
              ),
            ),
          ],
        );
      },
    );
  }

  segundoAlert(BuildContext mandarina) {
    showDialog(
      context: mandarina,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Componentes de Secuencias",
              ),
              Divider(
                thickness: 0.7,
                color: Colors.black12,
              ),
              CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),



                ],
              ),

              const SizedBox(
                height: 10.0,
              ),

              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Aceptar"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Cancelar"),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    primerAlert(context);
                  },
                  child: Text("Alert1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    segundoAlert(context);
                  },
                  child: Text("Alert2"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
