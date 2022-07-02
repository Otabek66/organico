import 'package:organico/model/product_info_model.dart';

class CategoryModel {
  List<ProductInfoModel> vegetables;
  List<ProductInfoModel> fruits;
  List<ProductInfoModel> meats;
  CategoryModel(this.vegetables,this.fruits,this.meats);
}