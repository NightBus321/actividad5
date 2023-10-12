import 'package:flutter/material.dart';
import 'package:actividad5/controller/UserController.dart';

class loginUser extends StatelessWidget {
  final UserController controller = UserController();
  final Color customColor = Color.fromARGB(255, 0, 126, 189);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: Container(
          margin: EdgeInsets.only(top: 100.0),
          padding: EdgeInsets.all(35.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo',
                  labelStyle: TextStyle(
                      color:
                          customColor), // Establece el color del labelText aquí
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color:
                            customColor), // Establece el color del borde enfocado aquí
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: customColor),
                  ),
                ),
                onChanged: (value) {
                  controller.userModel.email = value;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(
                      color:
                          customColor), // Establece el color del labelText aquí
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color:
                            customColor), // Establece el color del borde enfocado aquí
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: customColor),
                  ),
                ),
                onChanged: (value) {
                  controller.userModel.password = value;
                },
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (controller.isLoginFormValid()) {
                    print('Inicio de sesión exitoso');
                    controller.clearForm();
                  } else {
                    print('Por favor, complete todos los campos.');
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: customColor, // Establece el color personalizado aquí
                ),
                child: Text('Iniciar Sesión'),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      // decoration: BoxDecoration(color: Colors.blue),
                      child: Image.network(
                    'https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Facebook_colored_svg_copy-512.png',
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                      // decoration: BoxDecoration(color: Colors.blue),
                      child: Image.network(
                    'https://cdn1.iconfinder.com/data/icons/logos-brands-in-colors/544/Google__G__Logo-512.png',
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                      // decoration: BoxDecoration(color: Colors.blue),
                      child: Image.network(
                    'https://cdn4.iconfinder.com/data/icons/iconsimple-logotypes/512/github-512.png',
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
