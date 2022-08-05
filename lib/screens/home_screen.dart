import 'package:flutter/material.dart';
import 'package:movie_app/screens/screens.dart';
import 'package:movie_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        title: const Text('HomeScreen'),
      ),
      body: Column(
        children: const [
        CardSwiper(),
        SizedBox(height: 10,),
        SliderMovie()
        ],
      ),
    );
  }
}
