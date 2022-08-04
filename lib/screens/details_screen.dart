
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});



  @override
  Widget build(BuildContext context) {
  final movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no movie';
    return Scaffold( 
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          const _MoviePoster()
        ],
      ),
    );
  }
}
class _CustomAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.indigo,
      pinned: true,
      floating: false,
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        
        title: Text('Movies detail'),

        background: FadeInImage(                  
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://robledocars.com/wp-content/uploads/2022/05/IMG_6703.jpg'),
          fit: BoxFit.cover,
      ),
    ),);
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage('https://robledocars.com/wp-content/uploads/2022/05/IMG_6703.jpg')),
          ),
          SizedBox(width: 10,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('title Movie', style: TextTheme().headline1),
              Text('Descryption Movie', style: TextTheme().subtitle1)
            ],

          )
        ],
      
      ),
          );
  }
}

class _OverView extends StatelessWidget {
  const _OverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Incididunt nisi laborum magna nisi incididunt exercitation ea.'),
    );
  }
}