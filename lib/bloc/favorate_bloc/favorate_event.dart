import 'package:equatable/equatable.dart';

abstract class FavorateEvent  extends Equatable{
  const FavorateEvent();
  @override
  List<Object> get props => [];
}

class FetchFavourateList extends FavorateEvent{

}