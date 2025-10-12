import 'dart:io';

import 'package:fruits_hub_dashboard/featurs/add_product_feature/data/models/review_model.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/domin/entities/add_product_entity.dart';

class ProductModel {
  final String name;
  final String description;
  final num price;
  final String code;
  final bool isFeatured;
  final File imageFile;
  final String? imageUrl;
  final num expirationMonth;
  final bool isOrganic;
  final int numberOfCalorys;
  final num avrageRate = 0;
  final num ratingCount = 0;
  final int unitAmount;
  final List<ReviewModel> reviews;

  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.code,
    required this.isFeatured,
    required this.imageFile,
    this.imageUrl,
    this.isOrganic = false,
    required this.expirationMonth,
    required this.numberOfCalorys,
    required this.unitAmount,
    this.reviews = const [],
  });
  factory ProductModel.fromEntity(AddProductEntity entity) {
    return ProductModel(
      name: entity.name,
      description: entity.description,
      price: entity.price,
      code: entity.code,
      isFeatured: entity.isFeatured,
      imageFile: entity.imageFile,
      imageUrl: entity.imageUrl,
      expirationMonth: entity.expirationMonth,
      isOrganic: entity.isOrganic,
      numberOfCalorys: entity.numberOfCalorys,
      unitAmount: entity.unitAmount,
      reviews:
          entity.reviews
              .map((e) => ReviewModel.fromEntity(e))
              .toList(), // convert List<ReviewEntity> to List<ReviewModel>
    );
  }
  toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'code': code,
      'isFeatured': isFeatured,
      // 'imageFile':imageFile, // we can't save image file in database we need to upload it to storage and get the url then save the url in database
      'expirationMonth': expirationMonth,
      'isOrganic': isOrganic,
      'numberOfCalorys': numberOfCalorys,
      'unitAmount': unitAmount,
      'avrageRate': avrageRate,
      'ratingCount': ratingCount,
      'reviews': reviews.map((e) => e.toMap()).toList(),
    };
  }
}
