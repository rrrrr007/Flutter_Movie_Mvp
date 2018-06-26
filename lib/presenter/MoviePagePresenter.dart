import 'package:flutter_app/bean/Bean.dart';
import 'package:flutter_app/constact/MoviewPageConstact.dart';
import 'package:english_words/english_words.dart';
class MoviePagePresenter implements IMoviePagePresenter{
  IMoviePageView view;
  List<MovieBean> data;

  MoviePagePresenter(this.view);

  @override
  init() {
    data = new List();
    for(int i =0;i<10;i++){
      data.add(new MovieBean(title: new WordPair.random().asPascalCase, image: null, summary: null, movieID: null, director: null, cast: null, count: null));
    }
  }

  @override
  getData() {
    view.setData(data);
  }

}