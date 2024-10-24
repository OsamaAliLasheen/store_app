
class RatingModel {
  final double? rate;
  final int? count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(json) {
    return RatingModel(
      rate: (json['rate'] is int) ? (json['rate'] as int).toDouble() : json['rate'],
      count: json['count'],
    );
  }
}