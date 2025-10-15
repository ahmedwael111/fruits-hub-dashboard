import 'dart:io';

import 'package:fruits_hub_dashboard/featurs/add_product_feature/domin/entities/review_entity.dart';

class ProductEntity {
  final String name;
  final String description;
  final num price;
  final String code;
  final bool isFeatured;
  final File imageFile;
  String? imageUrl;
  final num expirationMonth;
  final bool isOrganic;
  final int numberOfCalorys;
  final num avrageRate = 0;
  final num ratingCount = 0;
  final int unitAmount;
  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.name,
    required this.description,
    required this.price,
    required this.code,
    required this.isFeatured,
    required this.imageFile,
    this.imageUrl,
    required this.isOrganic ,
    required this.expirationMonth,
    required this.numberOfCalorys,
    required this.unitAmount,
    this.reviews = const [],
  });
}
