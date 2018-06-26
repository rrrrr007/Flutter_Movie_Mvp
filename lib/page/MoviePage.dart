import 'package:flutter/material.dart';
import 'package:flutter_app/bean/Bean.dart';
import 'package:flutter_app/constact/MoviewPageConstact.dart';
import 'package:flutter_app/presenter/MoviePagePresenter.dart';

class MoviePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Movie List"),
        ),
        body: new MovieList());
  }
}

class MovieList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    MovieState view = new MovieState();
    MoviePagePresenter presenter = new MoviePagePresenter(view);
    view.setPresenter(presenter);
    presenter.init();
    return view;
  }
}

class MovieState extends State<MovieList> implements IMoviePageView {
  List<MovieBean> list = [];
  MoviePagePresenter presenter;

  Widget buildListTile(BuildContext context, MovieBean bean) {
    return new MergeSemantics(
      child: new ListTile(
        isThreeLine: true,
        dense: false,
        leading: new ExcludeSemantics(child: new CircleAvatar(child: new Text(bean.title.substring(0,1)))) ,
        title: new Text(bean.title),
        subtitle: new Text(bean.title),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    Widget widget;
    widget =
    new ListView.builder(padding: new EdgeInsets.symmetric(vertical: 8.0),
      itemBuilder: (BuildContext context, int index) {
        return buildListTile(context, list[index]);
      },
      itemCount: list.length,
    );
    return widget;
  }

    @override
  void initState() {
    super.initState();
    presenter.getData();
  }

  @override
  setData(List<MovieBean> list) {
    this.list = list;
  }

  @override
  setPresenter(IMoviePagePresenter presenter) {
    this.presenter = presenter;
  }
}