import 'package:flutter/material.dart';

class SliderMovie extends StatelessWidget {
  const SliderMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Lo que quieres ver', style: TextStyle(fontSize: 20)),
          ),
          Expanded(
            child: ListView.builder(
                
                scrollDirection: Axis.horizontal,
                itemCount: 200,
                itemBuilder: (context, index) => _MoviesScroll(),),
          )
        ],
      ),
    );
  }
}

class _MoviesScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: const [
          FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://via.placeholder.com/300x400'),)],
      ),
    );
  }
}
