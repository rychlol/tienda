import 'package:flutter/material.dart';
import 'package:tienda/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2), //color de la página entera
      body: Container(
        margin: EdgeInsets.only(
            top: 50.0, //agrega margen a la parte de arriba del texto de HOME
            left: 20.0,
            right: 20.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //mover texto a la izquierda
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, //mover texto "Good Morning"
                  children: [
                    Text(
                      "Hey, Ricardo", //agregar el nombre de bienvenida en la parte superior
                      style: AppWidget
                          .boldTextFeildStyle(), //Para llamar al codigo que esta en el archivo support_widget. metodo gestion estatal
                    ),
                    Text(
                      "Good Morning",
                      style: AppWidget
                          .lightTextFeildStyle(), //texto de good morning y llamar el estilo de texto con la  clase AppWidget
                    ),
                  ],
                ),
                ClipRRect(
                    borderRadius:
                        BorderRadius.circular(20), //Dejar la imagen redonda
                    child: Image.asset(
                      "images/boy.jpg", //agregar la imagen del usuario
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ))
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width:
                  MediaQuery.of(context).size.width, //espacio debajo de la foto
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, //elimina la linea gris debajo de la foto
                    hintText: "Search Products",
                    hintStyle: AppWidget.lightTextFeildStyle(),
                    suffixIcon: Icon( //agregar ícono de buscar
                      Icons.search,
                      color: Colors.black,
                    )), 
              ),
            )
          ],
        ),
      ),
    );
  }
}
