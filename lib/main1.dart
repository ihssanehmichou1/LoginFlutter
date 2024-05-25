import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Button Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Etat'),
        ),
        body: EtatCivil(),
      ),
    );
  }
}

class EtatCivil extends StatefulWidget {
  @override
  _EtatCivilState createState() => _EtatCivilState();
}

class _EtatCivilState extends State<EtatCivil> {
  List<String> etat = ["Monsieur", "Madame", "Mademoiselle"];
  String valeur = "Monsieur";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text("Monsieur"),
            Radio(
              value: etat[0],
              groupValue: valeur,
              onChanged: (Object? value) {
                setState(() {
                  valeur = etat[0];
                });
                debugPrint("$valeur");
              },
            ),
          ],
        ),
        Row(
          children: [
            Text("Madame"),
            Radio(
              value: etat[1],
              groupValue: valeur,
              onChanged: (Object? value) {
                setState(() {
                  valeur = etat[1];
                });
                debugPrint("$valeur");
              },
            ),
          ],
        ),
        Row(
          children: [
            Text("Mademoiselle"),
            Radio(
              value: etat[2],
              groupValue: valeur,
              onChanged: (Object? value) {
                setState(() {
                  valeur = etat[2];
                });
                debugPrint("$valeur");
              },
            ),
          ],
        ),
      ],
    );
  }
}
