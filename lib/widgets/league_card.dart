import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/league.dart';
import '../screens/league_details_screen.dart';

class LeagueCard extends StatelessWidget {
  Widget buildTeamLogo(int num) {
    return Row(
      children: <Widget>[
        Icon(Icons.group),
        Text(
          ' ' + num.toString(),
          style: GoogleFonts.lato(
              textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w900)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final league = Provider.of<League>(context);
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(5),
            height: 120,
            child: ClipRRect(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black87),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                          LeagueDetailsScreen.routeName,
                          arguments: league.id);
                    },
                    splashColor: Colors.black87,
                    borderRadius: BorderRadius.circular(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: league.colors,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              league.name,
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            buildTeamLogo(league.noOfTeams),
                            IconButton(
                              icon: Icon(Icons.arrow_forward),
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    LeagueDetailsScreen.routeName,
                                    arguments: league.id);
                              },
                              iconSize: 25,
                              splashRadius: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
