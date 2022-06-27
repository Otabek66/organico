import 'package:flutter/material.dart';
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
      ProductInfoModel("Broccoli", "Popey shop", "4.99","assets/home/images/broccoli.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
  CategoryModel(
      ProductInfoModel("Lettuce", "Popey shop", "4.99","assets/home/images/lettuce.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
  CategoryModel(
      ProductInfoModel("Potato", "Popey shop", "4.99","assets/home/images/potato.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
  CategoryModel(
      ProductInfoModel("Carrot", "Popey shop", "4.99","assets/home/images/carrot.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
  CategoryModel(
      ProductInfoModel("Red Onion", "Popey shop", "4.99","assets/home/images/onion.png"),
      ProductInfoModel("Banana", "FruitMarket", "6.99","assets/home/images/paprika.png"), 
      ProductInfoModel("Fish", "RiybaMarket", "10.99","assets/home/images/paprika.png"),),
];

  List<Color> color = [
    Color.fromRGBO(227, 85, 63, 0.15),
    Color.fromRGBO(243, 162, 12, 0.15),
    Color.fromRGBO(118, 178, 38, 0.15),
    Color.fromRGBO(63, 125, 60, 0.15),
    Color.fromRGBO(233, 176, 79, 0.15),
    Color.fromRGBO(234, 129, 47, 0.15),
    Color.fromRGBO(151, 3, 29, 0.15),
  ];

}