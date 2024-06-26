import 'package:dartz/dartz.dart';
import 'package:my_shopping_app/features/home/data/models/AddToCartModel.dart';
import 'package:my_shopping_app/features/home/data/models/AddToFavModel.dart';
import 'package:my_shopping_app/features/home/data/models/CategoryAndBrandModel.dart';
import 'package:my_shopping_app/features/home/data/models/FavResponse.dart';
import 'package:my_shopping_app/features/home/data/models/ProductsModel.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/RemoveFromFav.dart';

abstract  class HomeRepo{
  Future<Either<Failures,CategoryAndBrandModel>> getCategory();
  Future<Either<Failures,CategoryAndBrandModel>> getBrand();
  Future<Either<Failures,ProductsModel>> getProducts({String? search});
  Future<Either<Failures,AddToCartModel>> addToCart(String id);
  Future<Either<Failures,AddToFavModel>> addToFav(String id);
  Future<Either<Failures,RemoveFromFav>> removeFromFav(String id);
  Future<Either<Failures,FavResponse>> getFav();
}