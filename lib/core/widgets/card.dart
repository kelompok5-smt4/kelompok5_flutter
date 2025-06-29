import 'package:flutter/material.dart';
import 'package:kelompok_5/core/core.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double rating;
  final double? height;
  final double? width;
  const CustomCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.rating,
    this.height = 175,
    this.width = 175,
  });

  List<Widget> _buildStarRating(double rating) {
    List<Widget> stars = [];
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;

    for (int i = 0; i < 5; i++) {
      if (i < fullStars) {
        stars.add(Icon(Icons.star, color: Colors.yellow, size: 16));
      } else if (i == fullStars && hasHalfStar) {
        stars.add(Icon(Icons.star_half, color: Colors.yellow, size: 16));
      } else {
        stars.add(Icon(Icons.star_border, color: Colors.yellow, size: 16));
      }
    }
    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: width == 300 ? 25 : 23),
              child: Container(
                height: 70,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(200),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          ..._buildStarRating(rating),
                          SizedBox(width: 4),
                          Text(
                            rating.toString(),
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
