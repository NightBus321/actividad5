import 'package:flutter/material.dart';
import 'package:actividad5/view/LoginView.dart';

const primaryColor = Color.fromARGB(255, 0, 126, 189);

//Ojalá así como declaro variables me le pudiera declarar a ella
// #0077B3
// #00507C
// #00253E
// #007EBD
// #00689E
void main() {
  runApp(AppBases());
}

class AppBases extends StatelessWidget {
  const AppBases({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createScaffold(),
      routes: {
        "login": (context) => loginUser(),
      },
    );
  }
}

createScaffold() {
  List examples = [
    {"name": "Iniciar Sesión", "route": "login"},
  ];

  return Scaffold(
    appBar: AppBar(
      title: const Text("Login"),
      backgroundColor: primaryColor,
    ),
    body: ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(examples[index]["name"]),
          onTap: () {
            routing(context, examples[index]["route"]);
          },
        );
      },
      itemCount: examples.length,
      separatorBuilder: (context, index) => const Divider(
        color: Colors.black,
      ),
    ),
  );
}

void routing(BuildContext context, String route) {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) => AgendaMain(),
  //   ),
  // );
  Navigator.pushNamed(context, route);
}
