import 'package:equatable/equatable.dart';

import '../../model/favourite_item_model.dart';
enum ListStatus{loading, success, failure}
class FavouriteState extends Equatable{




  final List<FavouriteItemModel> favouriteItemList;
  final ListStatus listStatus;
  const FavouriteState({
    this.favouriteItemList = const [],
    this.listStatus = ListStatus.loading
  });

  FavouriteState copyWith({List<FavouriteItemModel>? favouriteItemList, ListStatus? listStatus }) {
    return FavouriteState(
    favouriteItemList: favouriteItemList ?? this.favouriteItemList
    );
}


  @override
  // TODO: implement props
  List<Object?> get props =>
      throw UnimplementedError();

}