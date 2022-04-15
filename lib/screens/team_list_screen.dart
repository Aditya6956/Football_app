import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/dark_mode.dart';
import '../models/league_list.dart';
import '../widgets/team_card.dart';

class TeamListScreen extends StatefulWidget {
  static const routeName = '/team-list-screen';

  @override
  _TeamListScreenState createState() => _TeamListScreenState();
}

class _TeamListScreenState extends State<TeamListScreen> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final leagueData = Provider.of<LeagueListProvider>(context);
    final leagueData1 = leagueData.allLeagues;
    final league = leagueData1[id].teamList;
    final isDark = Provider.of<DarkMode>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          leagueData1[id].name + ' Teams',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: isDark.dark ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: isDark.dark ? Colors.white : Colors.black87,
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
        backgroundColor: isDark.dark ? Colors.black87 : Colors.blue.shade100,
        elevation: 0.5,
        centerTitle: true,
      ),
      body: Container(
          color: isDark.dark ? Colors.black87 : Colors.white70,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 4,
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1),
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: league[i],
                child: TeamCard(id),
              ),
              itemCount: league.length,
            ),
          )),
    );
  }
}
