import 'package:flutter/material.dart';
import '../models/team.dart';

class League with ChangeNotifier {
  final int id;
  final String name;
  final int noOfTeams;
  final String country;
  final String imageUrl;
  final List<Team> teamList;
  final String description;
  final List<Color> colors;
  bool isFavourite = false;

  League(
      {@required this.id,
      @required this.name,
      @required this.noOfTeams,
      @required this.country,
      @required this.imageUrl,
      @required this.teamList,
      @required this.description,
      @required this.colors,
      isFavourite = false});

  void toggleFavoutite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
