// Importa los widgets visuales de Material Design
import 'package:flutter/material.dart';

// Pantalla principal sin estado que muestra el AppBar, Drawer y bienvenida
class AplicacionScreen extends StatelessWidget {
  // Constructor constante de AplicacionScreen
  const AplicacionScreen({super.key});

  // Construye la interfaz de la pantalla principal
  @override
  Widget build(BuildContext context) {
    // Retorna un Scaffold con AppBar, menú lateral Drawer y cuerpo central
    return Scaffold(
      // Barra superior titulada "Aplicación" con botón automático de menú
      appBar: AppBar(title: const Text('APLICACION')),
      // Menú lateral desplegable con cabecera azul y 4 opciones
      drawer: Drawer(
        // Lista desplazable para la cabecera y las opciones del menú
        child: ListView(
          // Elimina el padding superior para pegar la cabecera al borde
          padding: EdgeInsets.zero,
          // Elementos que componen el menú lateral
          children: [
            // Cabecera azul del menú lateral con avatar y nombre "Usuario"
            const DrawerHeader(
              // Aplica color azul de fondo a la cabecera
              decoration: BoxDecoration(color: Colors.blue),
              // Organiza el círculo blanco y el texto "Usuario" en columna
              child: Column(
                // Alinea los elementos a la izquierda
                crossAxisAlignment: CrossAxisAlignment.start,
                // Separa verticalmente el avatar y el texto
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Widgets dentro de la cabecera
                children: [
                  // Círculo blanco superior tipo avatar
                  CircleAvatar(
                    // Radio de 28 píxeles
                    radius: 28,
                    // Color blanco del círculo
                    backgroundColor: Colors.white,
                  ),
                  // Etiqueta de texto "Usuario" en la cabecera azul
                  Text(
                    // Texto mostrado en el encabezado
                    'USUARIO Grupo #8',
                    // Estilo blanco, tamaño 16 y negrita
                    style: TextStyle(
                      // Color blanco del texto
                      color: Colors.white,
                      // Tamaño de fuente 16
                      fontSize: 16,
                      // Peso de fuente en negrita
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Opción 1 del Drawer: Inicio
            ListTile(
              // Ícono de inicio a la izquierda
              leading: const Icon(Icons.home_outlined),
              // Título de la opción Inicio
              title: const Text('Inicio'),
              // Cierra el menú lateral al tocar Inicio
              onTap: () => Navigator.pop(context),
            ),
            // Opción 2 del Drawer: Perfil
            ListTile(
              // Ícono de perfil a la izquierda
              leading: const Icon(Icons.person_outline),
              // Título de la opción Perfil
              title: const Text('Perfil'),
              // Cierra el menú lateral al tocar Perfil
              onTap: () => Navigator.pop(context),
            ),
            // Opción 3 del Drawer: Configuración
            ListTile(
              // Ícono de configuración a la izquierda
              leading: const Icon(Icons.settings_outlined),
              // Título de la opción Configuración
              title: const Text('Configuración'),
              // Cierra el menú lateral al tocar Configuración
              onTap: () => Navigator.pop(context),
            ),
            // Opción 4 del Drawer: Cerrar sesión
            ListTile(
              // Ícono de salida a la izquierda
              leading: const Icon(Icons.logout),
              // Título de la opción Cerrar sesión
              title: const Text('Cerrar sesión'),
              // Cierra el Drawer y regresa a la pantalla de Login
              onTap: () {
                // Cierra el menú lateral desplegado
                Navigator.pop(context);
                // Regresa a LoginScreen sacando AplicacionScreen de la pila
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // Cuerpo centrado con el ícono y el mensaje de bienvenida
      body: const Center(
        // Columna para apilar el ícono y el texto de bienvenida
        child: Column(
          // Centra los elementos verticalmente en el cuerpo
          mainAxisAlignment: MainAxisAlignment.center,
          // Widgets mostrados en el centro de la pantalla
          children: [
            // Ícono superior similar al de documento/tarjeta de la guía
            Icon(
              // Tipo de ícono de documento con líneas
              Icons.article_outlined,
              // Tamaño del ícono en píxeles
              size: 64,
              // Color gris azulado sobrio para el ícono
              color: Colors.blueGrey,
            ),
            // Espacio vertical de 12 píxeles entre el ícono y el texto
            SizedBox(height: 12),
            // Texto central de bienvenida exigido en la pantalla Aplicación
            Text(
              // Mensaje exacto de bienvenida
              'Bienvenido a la aplicación',
              // Tamaño de letra legible en el centro
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}