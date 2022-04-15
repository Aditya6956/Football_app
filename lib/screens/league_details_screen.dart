import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/league_list.dart';
import '../screens/team_list_screen.dart';

class LeagueDetailsScreen extends StatefulWidget {
  static const routeName = '/league-detail-screen';

  @override
  _LeagueDetailsScreenState createState() => _LeagueDetailsScreenState();
}

class _LeagueDetailsScreenState extends State<LeagueDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final leagueData = Provider.of<LeagueListProvider>(context);
    final league = leagueData.allLeagues;
    final id = ModalRoute.of(context).settings.arguments as int;
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        elevation: 8,
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            league[id].toggleFavoutite();
          });
        },
        child: Icon(
          league[id].isFavourite ? Icons.favorite : Icons.favorite_outline,
          color: league[id].colors[1],
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: league[id].colors)),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      splashColor: Colors.black87,
                      onPressed: () {
                        Navigator.of(context).pop();
                        setState(() {});
                      },
                    ),
                    Text(
                      '  ' + league[id].name,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Container(
                    height: 380,
                    width: 310,
                    color: Colors.white,
                    child: Image.network(
                      league[id].imageUrl,
                      fit: BoxFit.cover,
                      scale: 0.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Clubs Participating Every season: ' +
                          league[id].noOfTeams.toString(),
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.975,
                      color: Colors.black45,
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        league[id].description,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.deepPurple.shade400,
                        Colors.pink.shade800
                      ]),
                    ),
                    height: 50,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                                TeamListScreen.routeName,
                                arguments: id);
                          },
                          child: Text(
                            'Teams',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                  TeamListScreen.routeName,
                                  arguments: id);
                            }),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
