import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 234, 235, 231), //cambiar el color de fondo
      body: Container(
        margin: EdgeInsets.only(top: 50.0), //agregar margen arriba de la imagen para que no tope
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //alinear texto al lado izquierdo
          children: [
            Image.asset(
                "images/headphone.PNG"), //llamar a la imagen de la carpeta
            Padding(
              padding: const EdgeInsets.only(left: 20.0), //agregarle espacio del lado izquierdo
              child: Text( //texto del producto y su tamaño y estilo
                "Explore\nThe Best\nProducts", //el "\n hace la funcion de dar un enter al texto"  
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0,),
            Row( //para mover el boton completamente
              mainAxisAlignment: MainAxisAlignment.end, //alinearlo a la derecha
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(20), //contenedor que rodea el texto "NEXT"
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(120)), //poner el boton redondo
                  child: Text( //texto del producto y su tamaño y estilo
                    "Next", //el "\n hace la funcion de dar un enter al texto"  
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
