import 'package:fruits_hub_dashboard/featurs/add_product_feature/domin/entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String review;
  final String date;
  final num rating;
  final String image;
  

  ReviewModel({
    required this.name,
    required this.review,
    required this.date,
    required this.rating,
    required this.image,
  });
  factory ReviewModel.fromEntity(ReviewEntity entity){
    return ReviewModel(name: entity.name, review: entity.review, date: entity.date, rating: entity.rating, image: entity.image);
  }
  factory ReviewModel.fromMap(Map<String, dynamic> map) {
    return ReviewModel(
      name: map['name'] ?? '',
      review: map['review'] ?? '',
      date: map['date'] ?? '',
      rating: map['rating'] ?? 0,
      image: map['image'] ?? '',
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'review': review,
      'date': date,
      'rating': rating,
      'image': image,
    };
  }
}