import 'dart:async';
import './productModel.dart';
import './productViewModel.dart';

class ProductBloc {
  
  final ProductViewModel model =ProductViewModel();
  final productController =StreamController<List<ProductModel>>();
  Stream<List<ProductModel>> get productItems => productController.stream;

  ProductBloc(){
    productController.add(model.getDataSouce());
  }
}