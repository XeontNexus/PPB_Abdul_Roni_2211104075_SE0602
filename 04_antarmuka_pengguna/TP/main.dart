import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Destinations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DestinationList(),
    );
  }
}

class DestinationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Destinations'),
      ),
      body: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          return DestinationCard(
            destination: destinations[index],
          );
        },
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final Destination destination;

  DestinationCard({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(destination.image),
          Text(destination.name),
          Text(destination.description),
        ],
      ),
    );
  }
}

class Destination {
  final String name;
  final String image;
  final String description;

  Destination({required this.name, required this.image, required this.description});
}

List<Destination> destinations = [
  Destination(
    name: 'Bali',
    image: 'https://awsimages.detik.net.id/community/media/visual/2022/06/07/ilustrasi-bali_169.jpeg?w=650',
    description: 'Bali is a popular tourist destination known for its beautiful beaches and temples.',
  ),
  Destination(
    name: 'Paris',
    image: 'assets/paris.jpg',
    description: 'Paris is the capital of France and is famous for its iconic landmarks like the Eiffel Tower.',
  ),
  Destination(
    name: 'Tokyo',
    image: 'assets/tokyo.jpg',
    description: 'Tokyo is the capital of Japan and is known for its vibrant city life and rich culture.',
  ),
  // Add more destinations here
];