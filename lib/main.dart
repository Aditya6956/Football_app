import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_bliga_teams.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_laliga_teams.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_ligue1_teams.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_pl_teams_screen.dart';
import 'package:ultimate_football/screens/favourite_teams/favourite_serieA_teams.dart';
import 'package:ultimate_football/screens/favourites_league_screen.dart';
import 'package:ultimate_football/screens/team_details_screen.dart';
import './models/dark_mode.dart';
import './screens/team_list_screen.dart';
import './models/league_list.dart';
import './screens/league_details_screen.dart';
import './screens/league_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => LeagueListProvider()),
        ChangeNotifierProvider(create: (ctx) => DarkMode()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ultimate Football',
        home: LeagueListScreen(),
        routes: {
          LeagueDetailsScreen.routeName: (ctx) => LeagueDetailsScreen(),
          TeamListScreen.routeName: (ctx) => TeamListScreen(),
          TeamDetailsScreen.routeName: (ctx) => TeamDetailsScreen(),
          FavouritesLeagueScreen.routeName: (ctx) => FavouritesLeagueScreen(),
          FavouritePLTeamsScreen.routeName: (ctx) => FavouritePLTeamsScreen(),
          FavouriteLaLigaTeamsScreen.routeName: (ctx) => FavouriteLaLigaTeamsScreen(),
          FavouriteSerieATeamsScreen.routeName: (ctx) => FavouriteSerieATeamsScreen(),
          FavouriteBligaTeamsScreen.routeName: (ctx) => FavouriteBligaTeamsScreen(),
          FavouriteLigue1TeamsScreen.routeName: (ctx) =>FavouriteLigue1TeamsScreen(),
        },
      ),
    );
  }
}
