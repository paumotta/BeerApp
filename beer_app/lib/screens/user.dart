import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usuarioController = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber, // Fondo de pantalla ámbar
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              size: 100.0,
              color: Colors.black,
            ),
            TextField(
              controller: _usuarioController,
              decoration: InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _contrasenaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_usuarioController.text == 'manolo' &&
                    _contrasenaController.text == '1234') {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => FavPage()),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error de inicio de sesión'),
                      content:
                          Text('Credenciales incorrectas. Intenta de nuevo.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Aceptar'),
                        ),
                      ],
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Fondo a negro
                onPrimary: Colors.white, // Texto a blanco
              ),
              child:
                  Text('Iniciar Sesión', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class FavPage extends StatefulWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  _FavPageState createState() {
    return _FavPageState();
  }
}

class _FavPageState extends State<FavPage> {
  TextEditingController _usuarioController = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange, // Fondo de pantalla ámbar
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              size: 100.0,
              color: Colors.black,
            ),
            SizedBox(height: 20.0),
            if (_usuarioController.text == 'sr' &&
                _contrasenaController.text == '76')
              Text(
                '¡Bienvenido!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 20.0),
            TextField(
              controller: _usuarioController,
              decoration: InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _contrasenaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                print(
                    'Usuario en la página: ${_usuarioController.text}');
                print(
                    'Contraseña en la página: ${_contrasenaController.text}');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child:
                  Text('INICIAR SESION', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
