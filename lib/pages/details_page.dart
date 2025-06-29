import 'package:flutter/material.dart';
import 'package:kelompok_5/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsPage extends StatelessWidget {
  final Destination destination;
  const DetailsPage({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(destination.name),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        toolbarHeight: 40,
      ),
      body: Column(
        children: [
          Image.asset(
            destination.imageUrl,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4),
                      Text('${destination.rating}'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    destination.description,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: MyButton(
                      text: "Lokasi",
                      onPressed: () {
                        final url =
                            'https://maps.google.com/?ll=${destination.latitude},${destination.longitude}';
                        launchUrl(Uri.parse(url));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
