import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/dark_mode.dart';
import '../models/team.dart';

class FavTeamCard extends StatelessWidget {
  final int id;

  FavTeamCard(this.id);

  @override
  Widget build(BuildContext context) {
    final team = Provider.of<Team>(context);
    final isDark = Provider.of<DarkMode>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: isDark.dark ? Colors.black38 : Colors.blue.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 2, bottom: 2)),
              Image.network(
                team.teamImageUrl,
                height: 115,
                fit: BoxFit.fitHeight,
              ),
              Text(
                team.name,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: isDark.dark ? Colors.orange.shade500 : Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.location_on,
                size: 17,
                color: isDark.dark ? Colors.grey : Colors.black,
              ),
              Text(
                team.venue,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: isDark.dark
                        ? Colors.orange.shade200
                        : Colors.black, //Colors.orange.shade200),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
