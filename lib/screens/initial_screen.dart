import 'package:alura_widgets_stateless/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Tarefas"),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(microseconds: 800),
        child: ListView(
          children: const [
            Tasks("Aprender Flutter", "assets/images/flutter.png", 3),
            Tasks("Andar de Bike", "assets/images/bike.jpg", 2),
            Tasks("Aprender Meditar", "assets/images/meditar.jpeg", 5),
            Tasks("Aprender Ler", "assets/images/ler.jpg", 4),
            Tasks("Aprender Jogar", "assets/images/jogar.jpg", 1),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              opacidade = !opacidade;
            },
          );
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
