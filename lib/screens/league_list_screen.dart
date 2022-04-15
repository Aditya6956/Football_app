import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../widgets/app_drawer.dart';
import '../models/dark_mode.dart';
import '../models/league_list.dart';
import '../widgets/league_card.dart';

class LeagueListScreen extends StatefulWidget {
  @override
  _LeagueListScreenState createState() => _LeagueListScreenState();
}

class _LeagueListScreenState extends State<LeagueListScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var leagueData = Provider.of<LeagueListProvider>(context);
    final league = leagueData.allLeagues;
    final isDark = Provider.of<DarkMode>(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(
            Icons.apps_outlined,
            color: isDark.dark ? Colors.white : Colors.black87,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '  Ultimate Football ',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: isDark.dark ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: isDark.dark
                ? Icon(Icons.brightness_6)
                : Icon(
                    Icons.brightness_6_outlined,
                    color: isDark.dark ? Colors.white : Colors.black,
                  ),
            onPressed: () {
              setState(() {
                isDark.toggleDarkMode();
              });
            },
            splashRadius: 25,
          ),
        ],
        centerTitle: true,
        shadowColor: Colors.transparent,
        backgroundColor:
            isDark.dark ? Colors.black87 : Colors.lightBlue.shade100,
      ),
      drawer: AppDrawer(),
      body: Container(
        color: isDark.dark ? Colors.black87 : Colors.lightBlue.shade100,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
            padding: EdgeInsets.only(top: 10),
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: league[i],
              child: LeagueCard(),
            ),
            itemCount: league.length,
          ),
        ),
      ),
    );
  }
}
