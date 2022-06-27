import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico/model/category_model.dart';
import 'package:organico/model/product_info_model.dart';
import 'package:organico/screens/home/state/home_state.dart';

class HomeCubit extends Cubit<HomeState>{
HomeCubit() : super (HomeInitial());


List<CategoryModel> info = [
  CategoryModel(
      ProductInfoModel("Paprika", "Vegshop", "4.99", "assets/home/images/paprika.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/banana.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
  CategoryModel(
      ProductInfoModel("Broccoli", "Popey shop", "4.99","assets/home/images/paprika.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
  CategoryModel(
      ProductInfoModel("Lettuce", "Popey shop", "4.99","assets/home/images/paprika.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
  CategoryModel(
      ProductInfoModel("Potato", "Popey shop", "4.99","assets/home/images/paprika.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
  CategoryModel(
      ProductInfoModel("Carrot", "Popey shop", "4.99","assets/home/images/paprika.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
  CategoryModel(
      ProductInfoModel("Red Onion", "Popey shop", "4.99","assets/home/images/paprika.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
];

}