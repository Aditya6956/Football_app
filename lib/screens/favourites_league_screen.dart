import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/league_list.dart';
import '../widgets/favourite_league_card.dart';
import '../models/dark_mode.dart';

class FavouritesLeagueScreen extends StatefulWidget {
  static const routeName = 'favourites-screen';

  @override
  _FavouritesLeagueScreenState createState() => _FavouritesLeagueScreenState();
}

class _FavouritesLeagueScreenState extends State<FavouritesLeagueScreen> {
  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<DarkMode>(context);
    final leagueData = Provider.of<LeagueListProvider>(context);
    final league = leagueData.favouriteLeague;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourite Leagues",
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: isDark.dark ? Colors.white : Colors.black87,
            ),
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: isDark.dark ? Colors.white : Colors.black87,
        ),
        backgroundColor:
            isDark.dark ? Colors.black87 : Colors.lightBlue.shade100,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {});
            },
            splashRadius: 25,
            color: isDark.dark ? Colors.white : Colors.black87,
          ),
        ],
      ),
      body: Container(
        color: isDark.dark ? Colors.black87 : Colors.lightBlue.shade100,
        child: league.length == 0
            ? Center(
                child: Text(
                  "No Favourites Here!!  Add some leagues as your Favourites",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: isDark.dark ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
              )
            : ListView.builder(
                itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                  value: league[i],
                  child: FavouriteLeagueCard(),
                ),
                itemCount: league.length,
              ),
      ),
    );
  }
}
