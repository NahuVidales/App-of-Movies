import 'package:flutter/material.dart';
import 'package:movie_app/screens/screens.dart';
import 'package:movie_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        title: const Text('HomeScreen'),
      ),
      body: Column(
        children: [
        CardSwiper(),
        SliderMovie()
        ],
      ),
    );
  }
}
