import 'package:flutter/material.dart';
import 'package:slide_action/slide_action.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Botones Deslizables',
      home: const SliderButtonDemo(),
    );
  }
}

class SliderButtonDemo extends StatelessWidget {
  const SliderButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botones Deslizables"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Botón 1
            SlideAction(
              onSubmit: () {
                print("Acción completada: Botón 1");
              },
              child: const Text("Desliza para completar"),
            ),
            const SizedBox(height: 20),
            // Botón 2
            SlideAction(
              onSubmit: () {
                print("Acción completada: Botón 2");
              },
              innerColor: Colors.blue,
              outerColor: Colors.lightBlueAccent,
              child: const Text(
                "Desliza
