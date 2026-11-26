// Importa los widgets principales de Material Design de Flutter
import 'package:flutter/material.dart';
// Importa la pantalla LoginScreen desde la carpeta diseno del proyecto
import 'package:taller7seman7grupo8/diseno/login.dart';

// Función principal donde inicia la ejecución de la aplicación
void main() {
  // Inicia la aplicación cargando el widget raíz MyApp
  runApp(const MyApp());
}

// Widget raíz sin estado que configura el tema y la pantalla inicial
class MyApp extends StatelessWidget {
  // Constructor constante de MyApp con llave opcional super.key
  const MyApp({super.key});

  // Construye la configuración visual y de navegación de la app
  @override
  Widget build(BuildContext context) {
    // Retorna MaterialApp con estilo azul similar al boceto del taller
    return MaterialApp(
      // Oculta la cinta de "DEBUG" en la esquina superior derecha
      debugShowCheckedModeBanner: false,
      // Configura colores y estilos globales de Material Design
      theme: ThemeData(
        // Define el color principal azul de la aplicación
        primarySwatch: Colors.blue,
        // Usa Material 2 para mantener la barra superior azul clásica del boceto
        useMaterial3: false,
        // Personaliza el AppBar con fondo azul y letras blancas
        appBarTheme: const AppBarTheme(
          // Color de fondo azul para la barra superior
          backgroundColor: Colors.blue,
          // Color blanco para títulos e íconos del AppBar
          foregroundColor: Colors.white,
        ),
      ),
      // Define LoginScreen como la primera pantalla al abrir la app
      home: const LoginScreen(),
    );
  }
}