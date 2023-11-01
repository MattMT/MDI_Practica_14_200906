import 'package:flutter/material.dart';
import 'package:movieapp_200906/media_list.dart';
import 'package:movieapp_200906/model/Media.dart';

class MediaListItem extends StatelessWidget {
  final Media media;
  MediaListItem(this.media);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              FadeInImage.assetNetwork(
                placeholder: "assets/kokoro.png",
                image: media.getBackDropUrl(),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250.0,
                fadeInDuration: const Duration(milliseconds: 400),
              ),
              Positioned(
                left: 0.0,
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black45.withOpacity(0.7),
                  ),
                  constraints: const BoxConstraints.expand(
                    height: 55.0
                  ),
                ),
              ),
              Positioned(
                left: 10.0,
                bottom: 10.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 380,
                      child:  Text(
                        media.title,
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 4.0),
                      width: 250,
                      child: Text(
                        media.getGenres(),
                        style: const TextStyle( color: Colors.white),
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 5.0,
                bottom: 10.0,
                child:  Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(media.voteAverage.toString()),
                        Container(width: 4.0,),
                        const Icon(Icons.star, color: Colors.yellowAccent, size: 16.0,)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          media.getReleaseYear().toString()
                        ),
                        Container(width: 4.0,),
                        const Icon(Icons.date_range, color: Color.fromARGB(255, 76, 161, 245), size: 16.0,)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
