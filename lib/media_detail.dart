import 'package:flutter/material.dart';
import 'package:movieapp_200906/model/Media.dart';
import 'dart:ui' as ui;

class MediaDetail extends StatelessWidget {
  final Media media;
  MediaDetail(this.media);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.network(
              media.getBackDropUrl(),
              fit: BoxFit.cover,
            ),
            BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(media.getPosterUrl()),
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 20.0,
                                offset: Offset(0.0, 10.0)
                                )
                  ]),
                      child: Container(
                        width: 300,
                        height: 300,
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              media.title,
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                            )
                            ),
                            Text(
                              media.voteAverage.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                /* fontFamily: , */
                                fontSize: 20
                              ),
                            )
                        ]
                        ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          media.overview,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            color: Colors.white,
                            /* fontFamily: , */
                            fontSize: 16.0
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
