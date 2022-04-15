import 'dart:async';
import 'package:flutter/material.dart';
import '../models/team.dart';
import '../models/league.dart';

class LeagueListProvider extends ChangeNotifier {
  List<League> _allLeagues = [
    League(
      id: 0,
      name: 'Premier League',
      noOfTeams: 20,
      country: 'England',
      imageUrl:
          'https://premierleague-static-files.s3.amazonaws.com/premierleague/photo/2018/12/14/9471c442-77fd-4983-9c45-b4a2b93be44a/PL-Lion.png',
      teamList: [
        Team(
          id: 0,
          name: 'Arsenal',
          venue: 'Emirates Stadium',
          teamImageUrl:
              'https://i2.wp.com/sportleaguemaps.com/wp-content/uploads/Arsenal.png?fit=1830%2C2126&ssl=1',
          venueImageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Emirates_Stadium_east_side_at_dusk.jpg/450px-Emirates_Stadium_east_side_at_dusk.jpg',
          noOfTitles: 13,
        ),
        Team(
            id: 1,
            name: 'Aston Villa',
            venue: 'Villa Park',
            teamImageUrl:
                'https://i0.wp.com/sportleaguemaps.com/wp-content/uploads/Aston-Villa.png?w=224&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Villa_Park.jpg/480px-Villa_Park.jpg',
            noOfTitles: 7),
        Team(
            id: 2,
            name: 'Brentford',
            venue: 'Community Stadium',
            teamImageUrl:
                'https://clublogos.stadion.io/assets/ClubLogos/Football/English/617.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Brentford_Community_Stadium_2020.jpg/480px-Brentford_Community_Stadium_2020.jpg',
            noOfTitles: 0),
        Team(
            id: 3,
            name: 'Brighton & Hove Albion',
            venue: 'AMEX Stadium',
            teamImageUrl:
                'https://i1.wp.com/sportleaguemaps.com/wp-content/uploads/Brighton-Hove-Albion.png?fit=1200%2C1200&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Falmer_Stadium_-_League_debut_2.jpg/330px-Falmer_Stadium_-_League_debut_2.jpg',
            noOfTitles: 0),
        Team(
            id: 4,
            name: 'Burnley',
            venue: 'Turf Moor',
            teamImageUrl:
                'https://i2.wp.com/sportleaguemaps.com/wp-content/uploads/Burnley.png?fit=316%2C316&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Turf_Moor_-_Harry_Potts_Way_%28east%29.jpg/480px-Turf_Moor_-_Harry_Potts_Way_%28east%29.jpg',
            noOfTitles: 2),
        Team(
            id: 5,
            name: 'Chelsea',
            venue: 'Stamford Bridge',
            teamImageUrl:
                'https://i2.wp.com/sportleaguemaps.com/wp-content/uploads/Chelsea.png?fit=225%2C225&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Stamford_Bridge_Clear_Skies.JPG/480px-Stamford_Bridge_Clear_Skies.JPG',
            noOfTitles: 6),
        Team(
            id: 6,
            name: 'Crystal Palace',
            venue: 'Selhurst Park',
            teamImageUrl:
                'https://i2.wp.com/sportleaguemaps.com/wp-content/uploads/Crystal-Palace.png?fit=1200%2C1496&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Selhurst_Park_Holmesdale_Stand.jpg/480px-Selhurst_Park_Holmesdale_Stand.jpg',
            noOfTitles: 0),
        Team(
            id: 7,
            name: 'Everton',
            venue: 'Goodison Park',
            teamImageUrl:
                'https://i0.wp.com/sportleaguemaps.com/wp-content/uploads/Everton.png?fit=1200%2C1227&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Goodison2017.JPG/480px-Goodison2017.JPG',
            noOfTitles: 9),
        Team(
            id: 8,
            name: 'Leeds Unites',
            venue: 'Elland Road',
            teamImageUrl:
                'https://i0.wp.com/sportleaguemaps.com/wp-content/uploads/Leeds-United.png?w=476&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Elland_Road_Stadium_panoramic_view_from_its_southeastearn_corner.jpg/480px-Elland_Road_Stadium_panoramic_view_from_its_southeastearn_corner.jpg',
            noOfTitles: 3),
        Team(
            id: 9,
            name: 'Leicester City',
            venue: 'King Power Stadium',
            teamImageUrl:
                'https://i1.wp.com/sportleaguemaps.com/wp-content/uploads/Leicester-City.png?fit=1200%2C1200&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/King_Power_Stadium_wide_view.jpg/450px-King_Power_Stadium_wide_view.jpg',
            noOfTitles: 1),
        Team(
            id: 10,
            name: 'Liverpool',
            venue: 'Anfield',
            teamImageUrl:
                'https://logos-download.com/wp-content/uploads/2016/05/Liverpool_logo_crest_emblem.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Panorama_of_Anfield_with_new_main_stand_%2829676137824%29.jpg/480px-Panorama_of_Anfield_with_new_main_stand_%2829676137824%29.jpg',
            noOfTitles: 19),
        Team(
            id: 11,
            name: 'Manchester City',
            venue: 'Etihad Stadium',
            teamImageUrl:
                'https://i0.wp.com/sportleaguemaps.com/wp-content/uploads/Manchester-City.png?resize=768%2C768&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Etihad_Stadium.jpg/480px-Etihad_Stadium.jpg',
            noOfTitles: 5),
        Team(
            id: 12,
            name: 'Manchester United',
            venue: 'Old Trafford',
            teamImageUrl:
                'https://i0.wp.com/sportleaguemaps.com/wp-content/uploads/Manchester-United.png?fit=220%2C223&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Manchester_United_Panorama_%288051523746%29.jpg/480px-Manchester_United_Panorama_%288051523746%29.jpg',
            noOfTitles: 20),
        Team(
            id: 13,
            name: 'Newcastle United',
            venue: "St. James' Park",
            teamImageUrl:
                'https://i0.wp.com/sportleaguemaps.com/wp-content/uploads/Newcastle-United.png?fit=224%2C225&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/2/2b/Aerial_view_of_St_James_Park_-_geograph.org.uk_-_472327_%28cropped%29.jpg',
            noOfTitles: 4),
        Team(
            id: 14,
            name: 'Norwich City F.C',
            venue: 'Carrow Road',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/Norwich_City.svg/429px-Norwich_City.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Carrow_Road_exterior.jpg/480px-Carrow_Road_exterior.jpg',
            noOfTitles: 0),
        Team(
            id: 15,
            name: 'Southampton',
            venue: "St. Mary's Stadium",
            teamImageUrl:
                'https://i1.wp.com/sportleaguemaps.com/wp-content/uploads/Southampton.png?fit=210%2C240&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/St_Mary%27s_Stadium_%282%29.jpg/480px-St_Mary%27s_Stadium_%282%29.jpg',
            noOfTitles: 0),
        Team(
            id: 16,
            name: 'Tottenham Hotspurs',
            venue: 'Spurs Stadium',
            teamImageUrl:
                'https://i2.wp.com/sportleaguemaps.com/wp-content/uploads/Tottenham-Hotspur.png?resize=768%2C1576&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Tottenham_Hotspur_Stadium_June_2019%2C_view_from_East.jpg/480px-Tottenham_Hotspur_Stadium_June_2019%2C_view_from_East.jpg',
            noOfTitles: 2),
        Team(
            id: 17,
            name: 'Watford F.C',
            venue: 'Vicarage Road',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/Watford.svg/429px-Watford.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Vicarage_Road_2015.jpg/480px-Vicarage_Road_2015.jpg',
            noOfTitles: 0),
        Team(
            id: 18,
            name: 'West Ham United',
            venue: 'London Stadium',
            teamImageUrl:
                'https://i2.wp.com/sportleaguemaps.com/wp-content/uploads/West-Ham-United.png?fit=1200%2C1335&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/FloodlitLondonStadium.jpg/405px-FloodlitLondonStadium.jpg',
            noOfTitles: 0),
        Team(
            id: 19,
            name: 'Wolves',
            venue: 'Molinuex Stadium',
            teamImageUrl:
                'https://i1.wp.com/sportleaguemaps.com/wp-content/uploads/Wolverhampton-Wanderers.png?fit=241%2C209&ssl=1',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Molineux_Stadium%2C_Wolverhampton%2C_2018.jpg/480px-Molineux_Stadium%2C_Wolverhampton%2C_2018.jpg',
            noOfTitles: 3),
      ],
      description:
          'Premier League, known as one the most competitive leagues in the world, is based in England, where 20 teams fight for the ultimate trophy, this league has been competitive since its inception and many teams had great campaigns',
      colors: [Colors.cyan, Colors.blue.shade600],
    ),
    League(
      id: 1,
      name: 'LaLiga',
      noOfTeams: 20,
      country: 'Spain',
      imageUrl:
          'https://img.pngio.com/laliga-vertical-logo-vector-black-free-vector-silhouette-la-liga-logo-png-1200_1200.png',
      teamList: [
        Team(
            id: 0,
            name: 'Alavés',
            venue: 'Mendizorroza',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Deportivo_Alaves_logo_%282020%29.svg/480px-Deportivo_Alaves_logo_%282020%29.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Mendizorrotza.jpg/480px-Mendizorrotza.jpg',
            noOfTitles: 0),
        Team(
            id: 1,
            name: 'Athletic Bilbao',
            venue: 'San Mamés',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/9/98/Club_Athletic_Bilbao_logo.svg/423px-Club_Athletic_Bilbao_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/San_Mames%2C_Bilbao%2C_Euskal_Herria_-_Basque_Country.jpg/480px-San_Mames%2C_Bilbao%2C_Euskal_Herria_-_Basque_Country.jpg',
            noOfTitles: 8),
        Team(
            id: 2,
            name: 'Atlético Madrid',
            venue: 'Wanda Metropolitano',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/f/f4/Atletico_Madrid_2017_logo.svg/360px-Atletico_Madrid_2017_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Atletico_Madrid_1_Chelsea_2.jpg/300px-Atletico_Madrid_1_Chelsea_2.jpg',
            noOfTitles: 11),
        Team(
            id: 3,
            name: 'FC Barcelona',
            venue: 'Camp Nou',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/4/47/FC_Barcelona_%28crest%29.svg/474px-FC_Barcelona_%28crest%29.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Camp_Nou_aerial_%28cropped%29.jpg/480px-Camp_Nou_aerial_%28cropped%29.jpg',
            noOfTitles: 26),
        Team(
            id: 4,
            name: 'Cádiz',
            venue: 'Nuevo Mirandilla',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/5/58/C%C3%A1diz_CF_logo.svg/310px-C%C3%A1diz_CF_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Vista_a%C3%A9rea_Nuevo_Ram%C3%B3n_de_Carranza.jpg/480px-Vista_a%C3%A9rea_Nuevo_Ram%C3%B3n_de_Carranza.jpg',
            noOfTitles: 0),
        Team(
            id: 5,
            name: 'Celta Vigo',
            venue: 'Abacana-Balaidos',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/1/12/RC_Celta_de_Vigo_logo.svg/270px-RC_Celta_de_Vigo_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Grada_Marcador.JPG/480px-Grada_Marcador.JPG',
            noOfTitles: 0),
        Team(
            id: 6,
            name: 'Elche',
            venue: 'Martinez Valero',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Elche_CF_logo.svg/390px-Elche_CF_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Estadio_Martinez_Valero.jpg/480px-Estadio_Martinez_Valero.jpg',
            noOfTitles: 0),
        Team(
            id: 7,
            name: 'Espanyol',
            venue: 'RCDE Stadium',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/d/d6/Rcd_espanyol_logo.svg/331px-Rcd_espanyol_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/EstadioRCDE_Pano.jpg/480px-EstadioRCDE_Pano.jpg',
            noOfTitles: 0),
        Team(
            id: 8,
            name: 'Getafe',
            venue: 'Coliseum Alfonso Perez',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/4/46/Getafe_logo.svg/459px-Getafe_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Coliseum-getafe.JPG/480px-Coliseum-getafe.JPG',
            noOfTitles: 0),
        Team(
            id: 9,
            name: 'Granada',
            venue: 'Nuevo Los Carmenes',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/d/d5/Logo_of_Granada_Club_de_F%C3%BAtbol.svg/128px-Logo_of_Granada_Club_de_F%C3%BAtbol.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Los_C%C3%A1rmenes_1.jpg/381px-Los_C%C3%A1rmenes_1.jpg',
            noOfTitles: 0),
        Team(
            id: 10,
            name: 'Levante',
            venue: 'Ciutat de València',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/Levante_Uni%C3%B3n_Deportiva%2C_S.A.D._logo.svg/397px-Levante_Uni%C3%B3n_Deportiva%2C_S.A.D._logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Levante2-0Lega2018.jpg/480px-Levante2-0Lega2018.jpg',
            noOfTitles: 0),
        Team(
            id: 11,
            name: 'Mallorca',
            venue: 'Mallorca Estadi',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/Rcd_mallorca.svg/363px-Rcd_mallorca.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Son_Moix_-_001.jpg/480px-Son_Moix_-_001.jpg',
            noOfTitles: 0),
        Team(
            id: 12,
            name: 'Osasuna',
            venue: 'El Sadar',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Osasuna_logo.svg/358px-Osasuna_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/ReynodeNavarra.JPG/480px-ReynodeNavarra.JPG',
            noOfTitles: 0),
        Team(
            id: 13,
            name: 'Rayo Vallecano',
            venue: 'Vallecas',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/1/17/Rayo_Vallecano_logo.png/225px-Rayo_Vallecano_logo.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Rayo0-1LegaCopa2018.jpg/480px-Rayo0-1LegaCopa2018.jpg',
            noOfTitles: 0),
        Team(
            id: 14,
            name: 'Real Betis',
            venue: 'Benito Villamarin',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/1/13/Real_betis_logo.svg/480px-Real_betis_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Estadio_Benito_Villamar%C3%ADn_2018001.jpg/480px-Estadio_Benito_Villamar%C3%ADn_2018001.jpg',
            noOfTitles: 1),
        Team(
            id: 15,
            name: 'Real Madrid',
            venue: 'Santiago Bernabeu',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/5/56/Real_Madrid_CF.svg/358px-Real_Madrid_CF.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Santiagobernabeupanoramav2.jpg/480px-Santiagobernabeupanoramav2.jpg',
            noOfTitles: 34),
        Team(
            id: 16,
            name: 'Real Sociedad',
            venue: 'Anoeta',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/f/f1/Real_Sociedad_logo.svg/417px-Real_Sociedad_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Donostia-San_Sebasti%C3%A1n_Anoeta_Stadium_2.jpg/330px-Donostia-San_Sebasti%C3%A1n_Anoeta_Stadium_2.jpg',
            noOfTitles: 2),
        Team(
            id: 17,
            name: 'Sevilla',
            venue: 'Ramon Sanchez Pizjuan',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Sevilla_FC_logo.svg/394px-Sevilla_FC_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Estadio_Ram%C3%B3n_S%C3%A1nchez_Pizju%C3%A1n_Preferencia_and_Gol_Norte-2007-04-05.jpg/203px-Estadio_Ram%C3%B3n_S%C3%A1nchez_Pizju%C3%A1n_Preferencia_and_Gol_Norte-2007-04-05.jpg',
            noOfTitles: 1),
        Team(
            id: 18,
            name: 'Valencia',
            venue: 'Mestalla',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/c/ce/Valenciacf.svg/381px-Valenciacf.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/CAMP_DE_MESTALLA_GRADA_DE_LA_MAR_2014.JPG/480px-CAMP_DE_MESTALLA_GRADA_DE_LA_MAR_2014.JPG',
            noOfTitles: 6),
        Team(
            id: 19,
            name: 'Villareal',
            venue: 'Estadio de la Ceramica',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/7/70/Villarreal_CF_logo.svg/384px-Villarreal_CF_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/ESTADIO3.jpg/480px-ESTADIO3.jpg',
            noOfTitles: 0),
      ],
      description:
          'Laliga, known as the grandest league in the world, is based in Spain, where 17 teams fight for the ultimate trophy, this league has seen some of the greatest players and greatest runs of teams like FC Barcelona & Real Madrid C.F',
      colors: [Colors.cyan, Colors.purple.shade300],
    ),
    League(
      id: 2,
      name: 'BundesLiga',
      noOfTeams: 18,
      country: 'Germany',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/tr/thumb/2/26/Bundesliga.svg/1200px-Bundesliga.svg.png',
      teamList: [
        Team(
            id: 0,
            name: 'FC Augsburg',
            venue: 'WWK Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/c/c5/FC_Augsburg_logo.svg/367px-FC_Augsburg_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Impuls_Arena_Augsburg_2011.jpg/480px-Impuls_Arena_Augsburg_2011.jpg',
            noOfTitles: 0),
        Team(
            id: 1,
            name: 'Hertha BSC',
            venue: 'Olympiastadion',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Hertha_BSC_Logo_2012.svg/480px-Hertha_BSC_Logo_2012.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Olympiastadion_Berlin_Sep-2015.jpg/450px-Olympiastadion_Berlin_Sep-2015.jpg',
            noOfTitles: 2),
        Team(
            id: 2,
            name: 'Union Berlin',
            venue: 'Stadion An der Alten Försterei',
            teamImageUrl:
                'https://kassiesa.net/uefa/clubs/images/Union-Berlin.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Stadion_an_der_Alten_F%C3%B6rsterei.png/480px-Stadion_an_der_Alten_F%C3%B6rsterei.png',
            noOfTitles: 0),
        Team(
            id: 3,
            name: 'Arminia Bielefeld',
            venue: 'Schüco-Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Arminia-wappen-2021.svg/768px-Arminia-wappen-2021.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Bielefeld_Sch%C3%BCcoArena.jpg/480px-Bielefeld_Sch%C3%BCcoArena.jpg',
            noOfTitles: 0),
        Team(
            id: 4,
            name: 'Vfl Bochum',
            venue: 'Vonovia Ruhrstadion',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/VfL_Bochum_logo.svg/456px-VfL_Bochum_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Vonovia_Ruhrstadion_2016_day.jpg/480px-Vonovia_Ruhrstadion_2016_day.jpg',
            noOfTitles: 0),
        Team(
            id: 5,
            name: 'Borussia Dortmund',
            venue: 'Signal Iduna Park',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/480px-Borussia_Dortmund_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Signal_iduna_park_stadium_dortmund_4.jpg/480px-Signal_iduna_park_stadium_dortmund_4.jpg',
            noOfTitles: 8),
        Team(
            id: 6,
            name: 'Eintracht Frankfurt',
            venue: 'Deutsche Bank Park',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Eintracht_Frankfurt_Logo.svg/480px-Eintracht_Frankfurt_Logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/130919-Commerzbank-Arena-Europa-League.jpg/480px-130919-Commerzbank-Arena-Europa-League.jpg',
            noOfTitles: 1),
        Team(
            id: 7,
            name: 'SC Frieburg',
            venue: 'Scewazwald-Stadion',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/SC_Freiburg_logo.svg/342px-SC_Freiburg_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Badenova-Stadion_2011.jpg/480px-Badenova-Stadion_2011.jpg',
            noOfTitles: 0),
        Team(
            id: 8,
            name: 'Greuther Fürth',
            venue: 'Sportpark Ronhof Sommer',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/SpVgg_Greuther_F%C3%BCrth_logo_%282017%29.svg/480px-SpVgg_Greuther_F%C3%BCrth_logo_%282017%29.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Playmobil-Stadion_Nordtrib%C3%BCne.jpg/480px-Playmobil-Stadion_Nordtrib%C3%BCne.jpg',
            noOfTitles: 3),
        Team(
            id: 9,
            name: '1899 Hoffenheim',
            venue: 'PreZero Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Logo_TSG_Hoffenheim.svg/402px-Logo_TSG_Hoffenheim.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Sinsheim_Rhein-Neckar-Arena.JPG/480px-Sinsheim_Rhein-Neckar-Arena.JPG',
            noOfTitles: 0),
        Team(
            id: 10,
            name: 'FC Köln',
            venue: 'RheinEnegieStadion',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/5/53/FC_Cologne_logo.svg/423px-FC_Cologne_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/FIFA_WM06_Stadion_Koeln.jpg/450px-FIFA_WM06_Stadion_Koeln.jpg',
            noOfTitles: 3),
        Team(
            id: 11,
            name: 'RB Leipzig',
            venue: 'Red Bull Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/RB_Leipzig_2014_logo.svg/480px-RB_Leipzig_2014_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Red_Bull_Arena_Panorama_cropped.jpg/480px-Red_Bull_Arena_Panorama_cropped.jpg',
            noOfTitles: 0),
        Team(
            id: 12,
            name: 'Bayer Leverkusen',
            venue: 'Bay Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/5/59/Bayer_04_Leverkusen_logo.svg/480px-Bayer_04_Leverkusen_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Bayarena_Leverkusen_2020.jpg/480px-Bayarena_Leverkusen_2020.jpg',
            noOfTitles: 0),
        Team(
            id: 13,
            name: 'Mainz 05',
            venue: 'Opel Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Logo_Mainz_05.svg/480px-Logo_Mainz_05.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Er%C3%B6ffnungsfeier_Coface_Arena.JPG/480px-Er%C3%B6ffnungsfeier_Coface_Arena.JPG',
            noOfTitles: 0),
        Team(
            id: 14,
            name: "Borussia M'gladbach",
            venue: 'Borussia-park',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Borussia_M%C3%B6nchengladbach_logo.svg/300px-Borussia_M%C3%B6nchengladbach_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Stadion_Gladbach.jpg/480px-Stadion_Gladbach.jpg',
            noOfTitles: 5),
        Team(
            id: 15,
            name: 'Bayern Munich',
            venue: 'Allianz Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg/480px-FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Allianz-Arena.ebenerdig.rang1-3.s.JPG/375px-Allianz-Arena.ebenerdig.rang1-3.s.JPG',
            noOfTitles: 31),
        Team(
            id: 16,
            name: 'Vfb Stuggart',
            venue: 'Mercedes-Benz Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/VfB_Stuttgart_1893_Logo.svg/441px-VfB_Stuttgart_1893_Logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Mercedes-Benz-Arena_Stuttgart.jpg/480px-Mercedes-Benz-Arena_Stuttgart.jpg',
            noOfTitles: 5),
        Team(
            id: 17,
            name: 'Vfl Wolfsburg',
            venue: 'Volkswagen Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Logo-VfL-Wolfsburg.svg/480px-Logo-VfL-Wolfsburg.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Volkswagen-Arena_G%C3%A4steblock.JPG/1500px-Volkswagen-Arena_G%C3%A4steblock.JPG',
            noOfTitles: 1),
      ],
      description:
          'BundesLiga is a Germany based league, where 18 teams fight for the ultimate trophy and from its Inception, Bayern Munich has seen more success than anyone else, they are winning the trophy since 2012..',
      colors: [Colors.lightGreen.shade400, Colors.teal.shade600],
    ),
    League(
      id: 3,
      name: 'Serie A',
      noOfTeams: 20,
      country: 'Italy',
      imageUrl:
          'https://www.soccerbible.com/media/99088/1-serie-a-logo-new.jpg',
      teamList: [
        Team(
            id: 0,
            name: 'Atalanta',
            venue: 'Gewiss Stadium',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/6/66/AtalantaBC.svg/307px-AtalantaBC.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/The_outside_of_the_Gewiss_Stadium_in_2020.jpg/480px-The_outside_of_the_Gewiss_Stadium_in_2020.jpg',
            noOfTitles: 0),
        Team(
            id: 1,
            name: 'Bologna',
            venue: "Stadio Renato Dall'Ara",
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/5/5b/Bologna_F.C._1909_logo.svg/312px-Bologna_F.C._1909_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Stadio_Dall%27Ara_01-02-2020.jpg/480px-Stadio_Dall%27Ara_01-02-2020.jpg',
            noOfTitles: 7),
        Team(
            id: 2,
            name: 'Cagliari',
            venue: 'Sardenga Arena',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/6/61/Cagliari_Calcio_1920.svg/396px-Cagliari_Calcio_1920.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/SardegnaArena.jpeg/480px-SardegnaArena.jpeg',
            noOfTitles: 1),
        Team(
            id: 3,
            name: 'Empoli',
            venue: 'Stadio Carlo Castellani',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/e/e9/Empoli_F.C._logo_%282021%29.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Empoli_-_maratona_dello_Stadio_Castellani.jpg/480px-Empoli_-_maratona_dello_Stadio_Castellani.jpg',
            noOfTitles: 0),
        Team(
            id: 4,
            name: 'Florentina',
            venue: 'Stadio Artemio Franchi',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/ACF_Fiorentina.svg/322px-ACF_Fiorentina.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Soccer_in_Florence%2C_Italy%2C_2007.jpg/480px-Soccer_in_Florence%2C_Italy%2C_2007.jpg',
            noOfTitles: 2),
        Team(
            id: 5,
            name: 'Genoa',
            venue: 'Stadio Luigi Ferraris',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/6/6c/Genoa_C.F.C._logo.svg/337px-Genoa_C.F.C._logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Stadio_Luigi_Ferraris_di_Genova.jpg/480px-Stadio_Luigi_Ferraris_di_Genova.jpg',
            noOfTitles: 9),
        Team(
            id: 6,
            name: 'Hellas Verona',
            venue: 'Stadio Bentegodi',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/9/92/Hellas_Verona_FC_logo_%282020%29.svg/471px-Hellas_Verona_FC_logo_%282020%29.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Bentegodiverona.jpeg/480px-Bentegodiverona.jpeg',
            noOfTitles: 1),
        Team(
            id: 7,
            name: 'Internazionale',
            venue: 'San Siro',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/FC_Internazionale_Milano_2021.svg/480px-FC_Internazionale_Milano_2021.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Stadio_Meazza.jpg/480px-Stadio_Meazza.jpg',
            noOfTitles: 19),
        Team(
            id: 8,
            name: 'Juventus',
            venue: 'Allianz Stadium',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Juventus_FC_2017_icon_%28black%29.svg/303px-Juventus_FC_2017_icon_%28black%29.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Juventus_v_Real_Madrid%2C_Champions_League%2C_Stadium%2C_Turin%2C_2013.jpg/480px-Juventus_v_Real_Madrid%2C_Champions_League%2C_Stadium%2C_Turin%2C_2013.jpg',
            noOfTitles: 36),
        Team(
            id: 9,
            name: 'Lazio',
            venue: 'Stadio Olimpico',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/c/ce/S.S._Lazio_badge.svg/480px-S.S._Lazio_badge.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/L%27Olimpico_-_panoramio.jpg/480px-L%27Olimpico_-_panoramio.jpg',
            noOfTitles: 2),
        Team(
            id: 10,
            name: 'AC Milan',
            venue: 'San Siro',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Logo_of_AC_Milan.svg/306px-Logo_of_AC_Milan.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Stadio_Meazza.jpg/480px-Stadio_Meazza.jpg',
            noOfTitles: 18),
        Team(
            id: 11,
            name: 'Napoli',
            venue: 'Stadio Diego Maradona',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/SSC_Neapel.svg/480px-SSC_Neapel.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Stadio_San_Paolo_Serie_A.jpg/480px-Stadio_San_Paolo_Serie_A.jpg',
            noOfTitles: 2),
        Team(
            id: 12,
            name: 'AS Roma',
            venue: 'Stadio Olimpico',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/f/f7/AS_Roma_logo_%282017%29.svg/370px-AS_Roma_logo_%282017%29.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/L%27Olimpico_-_panoramio.jpg/480px-L%27Olimpico_-_panoramio.jpg',
            noOfTitles: 3),
        Team(
            id: 13,
            name: 'Salernitana',
            venue: 'Stadio Arechi',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/8/85/US_Salernitana_1919_logo.svg/480px-US_Salernitana_1919_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Arechi_6_ottobre.jpg/480px-Arechi_6_ottobre.jpg',
            noOfTitles: 0),
        Team(
            id: 14,
            name: 'Sampodria',
            venue: 'Stadio Luigi Ferraris',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/d/d2/U.C._Sampdoria_logo.svg/379px-U.C._Sampdoria_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Stadio_Luigi_Ferraris_di_Genova.jpg/480px-Stadio_Luigi_Ferraris_di_Genova.jpg',
            noOfTitles: 1),
        Team(
            id: 15,
            name: 'Sassulo',
            venue: 'Mapei Stadium',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/US_Sassuolo_Calcio_logo.svg/441px-US_Sassuolo_Calcio_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/MapeiStadium.jpg/480px-MapeiStadium.jpg',
            noOfTitles: 0),
        Team(
            id: 16,
            name: 'Spezia',
            venue: 'Stadio Alberto Picco',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Spezia_Calcio.svg/474px-Spezia_Calcio.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/La_Spezia_-_Interno_Stadio_Picco.jpg/480px-La_Spezia_-_Interno_Stadio_Picco.jpg',
            noOfTitles: 0),
        Team(
            id: 17,
            name: 'Torino',
            venue: 'Stadio Olimpico Grande',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/2/2e/Torino_FC_Logo.svg/400px-Torino_FC_Logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Juventus_v_Chelsea%2C_Champions_League%2C_Stadio_Olimpico%2C_Turin%2C_2009.jpg/480px-Juventus_v_Chelsea%2C_Champions_League%2C_Stadio_Olimpico%2C_Turin%2C_2009.jpg',
            noOfTitles: 7),
        Team(
            id: 18,
            name: 'Udinese',
            venue: 'Stadio Friuli',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/c/ce/Udinese_Calcio_logo.svg/480px-Udinese_Calcio_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/DaciArena.jpg/480px-DaciArena.jpg',
            noOfTitles: 0),
        Team(
            id: 19,
            name: 'Venezia',
            venue: 'Stadio Pier Luigi Penzo',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/4/4f/Venezia_FC_logo.svg/480px-Venezia_FC_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Venezia_-_panoramio_%28151%29.jpg/480px-Venezia_-_panoramio_%28151%29.jpg',
            noOfTitles: 0),
      ],
      description:
          "Serie A, based in Italy,is a league which doesn't lack the quality, where 20 teams fight for the ultimate trophy, teams like AC Milan, Inter Milan, AS Roma, Juventus have ruled whole of Europe for many seasons",
      colors: [Colors.orange.shade300, Colors.yellow.shade900],
    ),
    League(
      id: 4,
      name: 'Ligue 1',
      noOfTeams: 20,
      country: 'France',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Ligue_1_Uber_Eats.svg/330px-Ligue_1_Uber_Eats.svg.png',
      teamList: [
        Team(
            id: 0,
            name: 'Angers',
            venue: 'Stade Raymond Kopa',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/6/6c/Angers_SCO.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Tribune-Jean-Bouin.jpg/480px-Tribune-Jean-Bouin.jpg',
            noOfTitles: 0),
        Team(
            id: 1,
            name: 'Bordeaux',
            venue: 'Matmut Atlantique',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/5/5d/F.C._Girondins_de_Bordeaux_logo.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Grand_Stade_de_Bordeaux_2014-11-16.jpg/480px-Grand_Stade_de_Bordeaux_2014-11-16.jpg',
            noOfTitles: 6),
        Team(
            id: 2,
            name: 'Brest',
            venue: 'Stade Francis-Le Blé',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Stade_Brestois_29_logo.svg/396px-Stade_Brestois_29_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Stade_Francis-Le_Bl%C3%A9.JPG/480px-Stade_Francis-Le_Bl%C3%A9.JPG',
            noOfTitles: 0),
        Team(
            id: 3,
            name: 'Clermont',
            venue: 'Stade Gabriel Montpied',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/5/52/Clermont_Foot_logo.svg/406px-Clermont_Foot_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/3/3f/Stade_g_montpied_clermont.jpg',
            noOfTitles: 0),
        Team(
            id: 4,
            name: 'Lens',
            venue: 'Stade Bollaert-Delelis',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/RC_Lens_logo.svg/363px-RC_Lens_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Stade_Bollaert_Delelis.JPG/480px-Stade_Bollaert_Delelis.JPG',
            noOfTitles: 1),
        Team(
            id: 5,
            name: 'Lille',
            venue: 'Stade Pierre-Mauroy',
            teamImageUrl:
                'https://www.logofootball.net/wp-content/uploads/Lille-OSC-Logo.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Russia_v_Slovakia_%282016-06-15%29_18.jpg/450px-Russia_v_Slovakia_%282016-06-15%29_18.jpg',
            noOfTitles: 6),
        Team(
            id: 6,
            name: 'Lorient',
            venue: 'Stade du Moustoir',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/FC_Lorient_logo.svg/336px-FC_Lorient_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Stade_du_Moustoir.jpg/480px-Stade_du_Moustoir.jpg',
            noOfTitles: 0),
        Team(
            id: 7,
            name: 'Lyon',
            venue: 'Groupama Stadium',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/c/c6/Olympique_Lyonnais.svg/414px-Olympique_Lyonnais.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/OL-Angers_Groupama_Stadium_11.jpg/480px-OL-Angers_Groupama_Stadium_11.jpg',
            noOfTitles: 7),
        Team(
            id: 8,
            name: 'Marseille',
            venue: 'Orange Velodrome',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Olympique_Marseille_logo.svg/370px-Olympique_Marseille_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Stade_V%C3%A9lodrome_%2820150405%29.jpg/480px-Stade_V%C3%A9lodrome_%2820150405%29.jpg',
            noOfTitles: 10),
        Team(
            id: 9,
            name: 'Metz',
            venue: 'Stade Saint-Symphorien',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/FC_Metz_2021_Logo.svg/336px-FC_Metz_2021_Logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Tribune_Ouest_Saint_Symphorien.jpg/480px-Tribune_Ouest_Saint_Symphorien.jpg',
            noOfTitles: 0),
        Team(
            id: 10,
            name: 'AS Monaco',
            venue: 'Stade Louis II',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/AS_Monaco_FC.svg/276px-AS_Monaco_FC.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Panoramio_-_V%26A_Dudush_-_stade_Louis_II.jpg/480px-Panoramio_-_V%26A_Dudush_-_stade_Louis_II.jpg',
            noOfTitles: 8),
        Team(
            id: 11,
            name: 'Montpellier',
            venue: 'Stade de la Mosson',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/a/a8/Montpellier_HSC_logo.svg/480px-Montpellier_HSC_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Stade_de_la_Mosson_24.jpg/480px-Stade_de_la_Mosson_24.jpg',
            noOfTitles: 1),
        Team(
            id: 12,
            name: 'Nantes',
            venue: 'Stade de la Beaujoire',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/FC-Nantes-blason-rvb.png/364px-FC-Nantes-blason-rvb.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Stade_de_la_Beaujoire.jpg/480px-Stade_de_la_Beaujoire.jpg',
            noOfTitles: 8),
        Team(
            id: 13,
            name: 'Nice',
            venue: 'Allianz Riviera',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/2/2e/OGC_Nice_logo.svg/388px-OGC_Nice_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Allianz_inauguration.jpg/480px-Allianz_inauguration.jpg',
            noOfTitles: 4),
        Team(
            id: 14,
            name: 'Paris Saint-Germain',
            venue: 'Parc des Princes',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Paris_Saint-Germain_F.C..svg/480px-Paris_Saint-Germain_F.C..svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/PSG-Nantes_Parc_des_Princes_05.jpg/450px-PSG-Nantes_Parc_des_Princes_05.jpg',
            noOfTitles: 9),
        Team(
            id: 15,
            name: 'Stade Reims',
            venue: 'Stade Auguste Delaune',
            teamImageUrl:
                'https://i.pinimg.com/originals/c0/d1/92/c0d19205790327560b578c9485fddbb9.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Tribune_Jonquet.JPG/480px-Tribune_Jonquet.JPG',
            noOfTitles: 6),
        Team(
            id: 16,
            name: 'Rennes',
            venue: 'Roazhon Park',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Stade_Rennais_FC.svg/435px-Stade_Rennais_FC.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Rennes_-_Montpellier_L1_20150815_-_Sc%C3%A8ne_match.JPG/480px-Rennes_-_Montpellier_L1_20150815_-_Sc%C3%A8ne_match.JPG',
            noOfTitles: 0),
        Team(
            id: 17,
            name: 'Saint-Étienne',
            venue: 'Stade Geoffroy-Guichard',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Logo_AS_Saint-%C3%89tienne.svg/351px-Logo_AS_Saint-%C3%89tienne.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Stade_Geoffroy-Guichard_-_Saint-Etienne_%2810-11-2013%29.jpg/480px-Stade_Geoffroy-Guichard_-_Saint-Etienne_%2810-11-2013%29.jpg',
            noOfTitles: 10),
        Team(
            id: 18,
            name: 'Strasbourg',
            venue: 'Stade de la Meinau',
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/8/80/Racing_Club_de_Strasbourg_logo.svg/480px-Racing_Club_de_Strasbourg_logo.svg.png',
            venueImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/La_Meinau_en_National.jpg/480px-La_Meinau_en_National.jpg',
            noOfTitles: 1),
        Team(
            id: 19,
            name: 'Troyes',
            venue: "Stade de l'Aube",
            teamImageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/ES_Troyes_AC.svg/390px-ES_Troyes_AC.svg.png',
            venueImageUrl:
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Ffr%2Fthumb%2Fa%2Fa2%2FFa%25C3%25A7ade_du_stade_de_l%27Aube.jpeg%2F1200px-Fa%25C3%25A7ade_du_stade_de_l%27Aube.jpeg&f=1&nofb=1',
            noOfTitles: 0),
      ],
      description:
          'Ligue 1, a league based in France, where 20 teams fight for the ultimate trophy, has some of the richest clubs and greatest players such as Diego Maradona(played for Napoli), currently players like Mbappe, Neymar Jr. are playing for Paris Saint-Germain',
      colors: [Colors.purple.shade400, Colors.red.shade400],
    ),
  ];
  List<League> get allLeagues {
    return [..._allLeagues];
  }

  List<League> get favouriteLeague {
    return _allLeagues.where((league) => league.isFavourite).toList();
  }

  List<Team> get favouritePLTeams {
    return _allLeagues[0]
        .teamList
        .where((element) => element.isFavourite)
        .toList();
  }

  List<Team> get favouriteLaLigaTeams {
    return _allLeagues[1]
        .teamList
        .where((element) => element.isFavourite)
        .toList();
  }

  List<Team> get favouriteBligaTeams {
    return _allLeagues[2]
        .teamList
        .where((element) => element.isFavourite)
        .toList();
  }

  List<Team> get favouriteSerieATeams {
    return _allLeagues[3]
        .teamList
        .where((element) => element.isFavourite)
        .toList();
  }

  List<Team> get favouriteLigue1Teams {
    return _allLeagues[4]
        .teamList
        .where((element) => element.isFavourite)
        .toList();
  }
}
