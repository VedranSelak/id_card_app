import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Card(),
  ));
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40 ,30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/myPhoto.jpg'),
                radius: 40,
              ),
            ),
           Divider(
             height: 60,
             color: Colors.grey[800],
           ),
           const Text(
             'NAME',
             style: TextStyle(
               color: Colors.grey,
               letterSpacing: 1.5,
             ),
           ),
            const SizedBox(height: 10),
            Text(
              'Vedran Selak',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.5,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'CURRENT POSITION',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Flutter developer',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.5,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.mail, color: Colors.grey[400]),
                Text(
                  'selakvedran@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.5,
                    fontSize: 18,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


