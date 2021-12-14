import 'package:flutter/material.dart';
import 'package:pragma_music/constans/colors/palette.dart';
import 'package:pragma_music/ui/home/home_ui.dart';

class FormUI extends StatefulWidget {
  const FormUI({Key? key}) : super(key: key);

  @override
  _FormUIState createState() => _FormUIState();
}

class _FormUIState extends State<FormUI> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'powered by Spotify',
              style: TextStyle(color: Palette.white, fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              'assets/images/logo_pragma.png',
              color: Palette.white,
            ),
          ],
        ),
        const Text(
          '¡Welcome!',
          style: TextStyle(
              color: Palette.white,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                fillColor: Palette.gray,
                filled: true,
                focusColor: Palette.white,
                hintText: 'Usuario',
                hintStyle: TextStyle(color: Palette.white),
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20))),
              ),
              style: TextStyle(
                color: Palette.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Palette.gray,
                filled: true,
                focusColor: Palette.white,
                hintText: 'Contraseña',
                hintStyle: TextStyle(color: Palette.white),
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20))),
              ),
              style: TextStyle(
                color: Palette.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeUI()),
                );
              },
              label: const Text('Iniciar Sesión'),
              style: ElevatedButton.styleFrom(
                  primary: Palette.secondary),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.star),
              onPressed: () {},
              label: const Text('Registrarse'),
              style: ElevatedButton.styleFrom(
                  primary: Palette.secondary),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: const [
            Text(
              'jeison.solarte',
              style: TextStyle(color: Palette.white, fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '@pragma.com.co',
              style: TextStyle(color: Palette.white, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
