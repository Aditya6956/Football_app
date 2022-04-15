import 'package:flutter/material.dart';

class Team extends ChangeNotifier {
  final int id;
  final String name;
  final String venue;
  final String teamImageUrl;
  final String venueImageUrl;
  final int noOfTitles;
  bool isFavourite = false;

  Team(
      {this.id,
      this.name,
      this.venue,
      this.teamImageUrl,
      this.venueImageUrl,
      this.noOfTitles});

  void toggleFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
