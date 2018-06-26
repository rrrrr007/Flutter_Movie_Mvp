import 'package:meta/meta.dart';
//电影实体类
class MovieBean {
  String title;
  String image;
  String summary;
  String movieID;
  String director;
  String cast;
  int count;

  MovieBean({
    @required this.title,
    @required this.image,
    @required this.summary,
    @required this.movieID,
    @required this.director,
    @required this.cast,
    @required this.count,
  });




}