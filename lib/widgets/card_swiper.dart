import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatefulWidget {
  const CardSwiper({super.key});

  @override
  State<CardSwiper> createState() => _CardSwiperState();
}

class _CardSwiperState extends State<CardSwiper> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.4,
      width: double.infinity,
      color: Colors.grey[850],
      child: Swiper(
        itemCount: 100,
        itemWidth: size.width * 40,
        layout: SwiperLayout.STACK,
        itemHeight: size.height * 50,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, 'details', arguments: 'Movie'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage(
                  'https://robledocars.com/wp-content/uploads/2022/05/IMG_6703.jpg',
                ),
                height: 160,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
