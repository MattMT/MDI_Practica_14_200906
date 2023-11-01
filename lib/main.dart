// Creado por: Mateo Maldonado Tolentino <200906>
// Asignatura: Desarrollo Móvil Integral
// Grado: 10
// Grupo: A
// Docente: MTI Marco Antonio Ramirez Hernandez

import 'package:flutter/material.dart';
import 'package:movieapp_200906/home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: const Home(),
  ));
}