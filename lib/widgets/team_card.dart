import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_football/screens/team_details_screen.dart';
import '../models/dark_mode.dart';
import '../models/team.dart';

class TeamCard extends StatelessWidget {
  final int id;

  TeamCard(this.id);

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 3),
              ),
              Image.network(
                team.teamImageUrl,
                height: 100,
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
                height: 6,
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
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: isDark.dark
                        ? Colors.orange.shade200
                        : Colors.black, //Colors.orange.shade200),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_rounded,
                  size: 28,
                  color: isDark.dark ? Colors.white : Colors.black,
                ),
                splashRadius: 28,
                onPressed: () {
                  Navigator.of(context).pushNamed(TeamDetailsScreen.routeName,
                      arguments: {'team_id': team.id, 'league_id': id});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
