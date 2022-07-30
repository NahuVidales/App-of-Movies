import 'package:flutter/material.dart';

class SliderMovie extends StatelessWidget {
  const SliderMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.orange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Lo que quieres ver'),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => _MoviesScroll()),
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
      color: Colors.indigo,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}
