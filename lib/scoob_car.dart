import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animation_v2/forest_god.dart';

class ScoobCar extends StatefulWidget {
  const ScoobCar({super.key});

  @override
  State<ScoobCar> createState() => _ScoobCarState();
}

class _ScoobCarState extends State<ScoobCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: const RiveAnimation.asset(
                "./assets/rive/vehicles.riv",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedButton(
                  onPressed: () => {
                    Navigator.pop(context)
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForestGod(),
                      ),
                    )
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}