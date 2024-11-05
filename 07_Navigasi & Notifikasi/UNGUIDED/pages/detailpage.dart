import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  const Detailpage({super.key, required this.data});

  final String data;
// stirng bisa diganti dengan widged
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail page'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            //text dibuang semua diganti
            //body: Center(
            //child: data,),
          ),
        ),
      ),
    );
  }
}
