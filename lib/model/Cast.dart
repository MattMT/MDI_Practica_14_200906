import 'package:movieapp_200906/model/Media.dart';
import 'package:movieapp_200906/common/Util.dart';
import 'package:movieapp_200906/common/MediaProvider.dart';

class Cast{
  int id;
  String name;
  String profilePath;

  factory Cast(Map jsonMap, MediaType mediaType){
    try{
      return Cast.deserialize(jsonMap, mediaType);
    }catch(ex){
      rethrow;
    }
  }
   Cast.deserialize(Map jsonMap, MediaType mediaType):
   id = jsonMap["cast_id"].toInt(),
   name = jsonMap["cast_id"],
   profilePath = jsonMap["profile_path"];
}