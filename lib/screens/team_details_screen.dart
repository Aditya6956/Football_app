import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_football/models/dark_mode.dart';
import 'package:ultimate_football/models/league_list.dart';

class TeamDetailsScreen extends StatefulWidget {
  static const routeName = '/team-details-screen';

  @override
  _TeamDetailsScreenState createState() => _TeamDetailsScreenState();
}
class _TeamDetailsScreenState extends State<TeamDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<DarkMode>(context);
    final leagueData = Provider.of<LeagueListProvider>(context);
    final league = leagueData.allLeagues;
    final ids = ModalRoute.of(context).settings.arguments as Map<String, int>;
    final teamId = ids['team_id'];
    final leagueId = ids['league_id'];
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        elevation: 8,
        backgroundColor: isDark.dark ? Colors.black87 : Colors.white,
        onPressed: () {
          setState(() {
            league[leagueId].teamList[teamId].toggleFavourite();
          });
        },
        child: Icon(
          league[leagueId].teamList[teamId].isFavourite
              ? Icons.favorite
              : Icons.favorite_outline,
          color: Colors.pink,
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      appBar: AppBar(
        title: Text(
          league[leagueId].teamList[teamId].name,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: isDark.dark ? Colors.white : Colors.black87,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: isDark.dark ? Colors.white : Colors.black87,
        ),
        backgroundColor:
            isDark.dark ? Colors.black87 : Colors.lightBlue.shade100,
        actions: <Widget>[
          IconButton(
            icon: isDark.dark
                ? Icon(Icons.brightness_6)
                : Icon(
                    Icons.brightness_6_outlined,
                    color: isDark.dark ? Colors.white : Colors.black,
                  ),
            splashRadius: 25,
            onPressed: () {
              setState(() {
                isDark.toggleDarkMode();
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: isDark.dark ? Colors.black87 : Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(25),
              ),
              Text(
                league[leagueId].teamList[teamId].name + "'s Team Logo",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: isDark.dark ? Colors.white : Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 6),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Image.network(
                      league[leagueId].teamList[teamId].teamImageUrl,
                      height: 500,
                    ),
                    color: isDark.dark
                        ? Colors.black54
                        : Colors.lightBlue.shade100,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'No of Titles won: ' +
                        league[leagueId].teamList[teamId].noOfTitles.toString(),
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: isDark.dark ? Colors.white : Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Venue:',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: isDark.dark ? Colors.white : Colors.black87,
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                league[leagueId].teamList[teamId].venue,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: isDark.dark ? Colors.white : Colors.black87,
                  ),
                ),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        league[leagueId].teamList[teamId].venueImageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    color: isDark.dark
                        ? Colors.black54
                        : Colors.lightBlue.shade100,
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
