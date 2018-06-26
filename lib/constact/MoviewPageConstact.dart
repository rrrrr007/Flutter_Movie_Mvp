import 'package:flutter_app/base/Mvp.dart';
import 'package:flutter_app/bean/Bean.dart';
//电影业务需求抽象类
abstract class IMoviePagePresenter implements IPresenter{
  getData();
}
//电影业务实施抽象类
abstract class IMoviePageView implements IView<IMoviePagePresenter>{
  setData(List<MovieBean> list);
}