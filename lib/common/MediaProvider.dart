import 'dart:async';
import 'package:movieapp_200906/model/Media.dart';
import 'package:movieapp_200906/common/HttpHandler.dart';

abstract class MediaProvider{
  Future <List<Media>> fetchMedia(String category);
}


class MovieProvider extends MediaProvider{
  HttpHandler client = HttpHandler.get();
  @override
  Future <List<Media>> fetchMedia(String category){
    return client.fetchMovies(category: category);
  }
}

class ShowProvider extends MediaProvider{
  HttpHandler client = HttpHandler.get();
  @override
  Future <List<Media>> fetchMedia(String category){
    return client.fetchShow(category: category);
  }
}