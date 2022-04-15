import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_football/models/dark_mode.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_bliga_teams.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_laliga_teams.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_ligue1_teams.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_pl_teams_screen.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_serieA_teams.dart';
import 'package:ultimate_football/screens/favourites_league_screen.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<DarkMode>(context);
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text(
                "Hello, Welcome back!!",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: isDark.dark ? Colors.white : Colors.black87),
                ),
              ),
              toolbarHeight: 70,
              backgroundColor:
                  isDark.dark ? Colors.black87 : Colors.lightBlue.shade100,
              automaticallyImplyLeading: false,
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 30,
              ),
              title: Text(
                "Favourite Leagues",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: isDark.dark ? Colors.black87 : Colors.black87,
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(FavouritesLeagueScreen.routeName);
              },
            ),
            Divider(
              height: 3,
              thickness: 1,
            ),
            ListTile(
                trailing: DropdownButton(
                    value: selectedValue,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "Favourite PL Teams",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color:
                                  isDark.dark ? Colors.black87 : Colors.black87,
                            ),
                          ),
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Favourite Laliga Teams",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color:
                                  isDark.dark ? Colors.black87 : Colors.black87,
                            ),
                          ),
                        ),
                        value: 2,
                      ),
                      DropdownMenuItem(
                          child: Text(
                            "Favourite B'Liga Teams",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: isDark.dark
                                    ? Colors.black87
                                    : Colors.black87,
                              ),
                            ),
                          ),
                          value: 3),
                      DropdownMenuItem(
                        child: Text(
                          "Favourite Serie A Teams",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color:
                                  isDark.dark ? Colors.black87 : Colors.black87,
                            ),
                          ),
                        ),
                        value: 4,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Favourite Ligue 1 Teams",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color:
                                  isDark.dark ? Colors.black87 : Colors.black87,
                            ),
                          ),
                        ),
                        value: 5,
                      ),
                    ],
                    onChanged: (value) {
                      selectedValue = value;
                      switch (value) {
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FavouritePLTeamsScreen()),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FavouriteLaLigaTeamsScreen()),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FavouriteBligaTeamsScreen()),
                          );
                          break;
                        case 4:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FavouriteSerieATeamsScreen()),
                          );
                          break;
                        case 5:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FavouriteLigue1TeamsScreen()),
                          );
                          break;
                      }
                    })),
            Divider(
              height: 3,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
