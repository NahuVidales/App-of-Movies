import 'dart:js';

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  final String? movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no movie';
    return Scaffold( 
      body: CustomScrollView(
        slivers: [
          _CustomAppBar()
        ],
      )
    );
  }
}
class _CustomAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('Movies detail'),
        background: FadeInImage(                  
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://robledocars.com/wp-content/uploads/2022/05/IMG_6703.jpg'),
          fit: BoxFit.cover,
      ),
    ));
  }
}