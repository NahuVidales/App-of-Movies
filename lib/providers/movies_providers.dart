import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/models/now_playing_response%20(1).dart';

import '../models/movies.dart';



class MoviesProvider extends ChangeNotifier {

  String _apiKey   = '1865f43a0549ca50d341dd9ab8b29f49';
  String _baseUrl  = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies   = [];

  Map<int, List<Cast>> moviesCast = {};
    
  int _popularPage = 0;

  getOnDisplayMovies() async {
    
 final url =Uri.https( _baseUrl, '3/movie/now_playing', {
  'api_key': _apiKey,
  'lenguage': _language,
  'page': '1'
 });

 final response = await http.get(url);
 final NowPlayingResponse = NowPlayingResponse.fromJson(response.body);

 onDisplayMovies = NowPlayingResponse.results;
 notifyListeners();
  
}

 