import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible vs Expanded'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          // Flexible
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Flexible takes up the remaining space but can shrink if needed.",
                    ),
                  ),
                ),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
          const SizedBox(height: 20),
          // Expanded
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 100,
                color: const Color.fromARGB(255, 231, 239, 3),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Expanded forces the widget to take up all the remaining space.",
                    ),
                  ),
                ),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
          const SizedBox(height: 10,),
          const Text("expanded",
          style: TextStyle(fontSize: 18),),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}