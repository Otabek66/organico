import 'package:organico/model/product_info_model.dart';

class CategoryModel {
  ProductInfoModel vegetables;
  ProductInfoModel fruits;
  ProductInfoModel meats;
  CategoryModel(this.vegetables,this.fruits,this.meats);
}