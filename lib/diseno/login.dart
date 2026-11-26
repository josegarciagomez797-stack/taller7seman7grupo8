// Importa los componentes visuales de Material Design
import 'package:flutter/material.dart';
// Importa la pantalla principal AplicacionScreen para navegar tras validar
import 'package:taller7seman7grupo8/diseno/aplicacion.dart';

// Define LoginScreen como StatefulWidget para controlar los campos de texto
class LoginScreen extends StatefulWidget {
  // Constructor constante de LoginScreen
  const LoginScreen({super.key});

  // Crea la instancia de estado asociada a LoginScreen
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// Clase que administra los controladores y la interfaz del formulario de Login
class _LoginScreenState extends State<LoginScreen> {
  // Controlador para leer el texto escrito en el campo de Usuario
  final TextEditingController usuarioController = TextEditingController();
  // Controlador para leer el texto escrito en el campo de Contraseña
  final TextEditingController contrasenaController = TextEditingController();

  // Libera los controladores de memoria cuando se destruye el widget
  @override
  void dispose() {
    // Libera los recursos del controlador de usuario
    usuarioController.dispose();
    // Libera los recursos del controlador de contraseña
    contrasenaController.dispose();
    // Ejecuta la limpieza de la clase padre State
    super.dispose();
  }

  // Construye la interfaz visual de la pantalla de Login
  @override
  Widget build(BuildContext context) {
    // Estructura base de la pantalla con barra superior y cuerpo
    return Scaffold(
      // Barra superior con el título Login
      appBar: AppBar(title: const Text('LOGIN')),
      // Margen exterior de 24 píxeles alrededor del formulario
      body: Padding(
        // Aplica relleno uniforme de 24 píxeles en todos los lados
        padding: const EdgeInsets.all(24),
        // Columna vertical para alinear los campos y el botón
        child: Column(
          // Centra los elementos verticalmente en la pantalla
          mainAxisAlignment: MainAxisAlignment.center,
          // Lista de widgets que forman el formulario
          children: [
            // Campo de texto para ingresar el nombre de usuario
            TextField(
              // Asigna el controlador de usuario para leer su contenido
              controller: usuarioController,
              // Configura etiqueta y borde redondeado del campo
              decoration: InputDecoration(
                // Texto de ayuda/etiqueta para el campo de usuario
                labelText: 'Usuario',
                // Borde rectangular con esquinas redondeadas de 8 px
                border: OutlineInputBorder(
                  // Define el radio de curvatura del borde
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            // Espacio vertical de 18 píxeles entre ambos campos
            const SizedBox(height: 18),
            // Campo de texto para ingresar la contraseña oculta
            TextField(
              // Asigna el controlador de contraseña para leer su contenido
              controller: contrasenaController,
              // Oculta los caracteres con puntos mientras se escribe
              obscureText: true,
              // Configura etiqueta y borde redondeado del campo de contraseña
              decoration: InputDecoration(
                // Texto de etiqueta para el campo de contraseña
                labelText: 'Contraseña',
                // Borde rectangular con esquinas redondeadas de 8 px
                border: OutlineInputBorder(
                  // Define el radio de curvatura del borde
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            // Espacio vertical de 22 píxeles antes del botón Ingresar
            const SizedBox(height: 22),
            // Contenedor que fuerza al botón a ocupar todo el ancho disponible
            SizedBox(
              // Ancho infinito dentro del padding de la columna
              width: double.infinity,
              // Altura cómoda de 48 píxeles para el botón
              height: 48,
              // Botón principal para validar las credenciales e ingresar
              child: ElevatedButton(
                // Define el color azul y forma redondeada del botón
                style: ElevatedButton.styleFrom(
                  // Color de fondo azul del botón
                  backgroundColor: Colors.blue,
                  // Color blanco para el texto del botón
                  foregroundColor: Colors.white,
                  // Bordes redondeados de 8 píxeles en el botón
                  shape: RoundedRectangleBorder(
                    // Radio de esquinas del botón
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                // Función ejecutada al presionar el botón Ingresar
                onPressed: () {
                  // Valida si usuario es "usuario" y contraseña es "1234"
                  if (usuarioController.text == 'usuario' &&
                      contrasenaController.text == '1234') {
                    // Navega a AplicacionScreen usando Navigator.push
                    Navigator.push(
                      // Contexto de navegación actual
                      context,
                      // Crea la ruta hacia la pantalla AplicacionScreen
                      MaterialPageRoute(
                        // Instancia la pantalla principal Aplicación
                        builder: (context) => const AplicacionScreen(),
                      ),
                    );
                  } else {
                    // Muestra un SnackBar inferior si las credenciales no coinciden
                    ScaffoldMessenger.of(context).showSnackBar(
                      // Construye el widget SnackBar con el mensaje de error
                      const SnackBar(
                        // Texto mostrado al usuario cuando fallan los datos
                        content: Text('Usuario o contraseña incorrectos'),
                      ),
                    );
                  }
                },
                // Texto visible dentro del botón
                child: const Text('Ingresar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}