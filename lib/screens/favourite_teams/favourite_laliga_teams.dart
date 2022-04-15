import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_football/models/dark_mode.dart';
import 'package:ultimate_football/models/league_list.dart';
import 'package:ultimate_football/widgets/fav_team_card.dart';

class FavouriteLaLigaTeamsScreen extends StatefulWidget {
  static const routeName = 'favourite-laliga-teams-screen';
  @override
  _FavouriteLaLigaTeamsScreenState createState() =>
      _FavouriteLaLigaTeamsScreenState();
}

class _FavouriteLaLigaTeamsScreenState
    extends State<FavouriteLaLigaTeamsScreen> {
  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<DarkMode>(context);
    final id = ModalRoute.of(context).settings.arguments;
    final leagueData = Provider.of<LeagueListProvider>(context);
    final league = leagueData.favouriteLaLigaTeams;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourite LaLiga Teams',
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
        backgroundColor: isDark.dark ? Colors.black87 : Colors.white,
      ),
      body: Container(
        color: isDark.dark ? Colors.black87 : Colors.white,
        child: league.length == 0
            ? Center(
                child: Text(
                    'No Teams Here!!' +
                        '\nPlease add  some favourite teams of yours!!!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 20,
                        color: isDark.dark ? Colors.white : Colors.black87,
                      ),
                    )),
              )
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3 / 4,
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1),
                itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                  value: league[i],
                  child: FavTeamCard(id),
                ),
                itemCount: league.length,
              ),
      ),
    );
  }
}
