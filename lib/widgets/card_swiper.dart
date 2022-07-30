import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.9,
      width: double.infinity,
      color: Colors.red,
      child: Swiper(itemCount: 10,
      itemWidth: size.width * 40,
      layout: SwiperLayout.STACK,
      itemHeight: size.height * 50,
      itemBuilder: (BuildContext context, int index) {
        return FadeInImage(
          placeholder: AssetImage('assets\loading.gif'),
          image: NetworkImage('https://images.unsplash.com/photo-1617703376300-58b4220ffc0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80'));
      },
      ),
    );
  }
}
