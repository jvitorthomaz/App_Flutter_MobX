// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MatchModel {
  late String date;
  late String teamA;
  late String teamB;
  late int teamAScore;
  late double odds1xbet;
  late double oddsBetsafe;
  late double oddsBetsson;
  late int likesCount;
  late int starsCount;
  late int viewsCount;
  late int sharesCount;
  late String channels;
  late String stadium;
  late String referee;
  late String refereeAvatar;
  late String refereeStats;
  late String teamAImage;
  late String teamBImage;
  late double redCardMedia;
  late double yellowCardMedia;
  late String teamAStats;
  late String teamBStats;
  late String id;
  MatchModel({
    required this.date,
    required this.teamA,
    required this.teamB,
    required this.teamAScore,
    required this.odds1xbet,
    required this.oddsBetsafe,
    required this.oddsBetsson,
    required this.likesCount,
    required this.starsCount,
    required this.viewsCount,
    required this.sharesCount,
    required this.channels,
    required this.stadium,
    required this.referee,
    required this.refereeAvatar,
    required this.refereeStats,
    required this.teamAImage,
    required this.teamBImage,
    required this.redCardMedia,
    required this.yellowCardMedia,
    required this.teamAStats,
    required this.teamBStats,
    required this.id,
  });

    MatchModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    teamA = json['team_a'];
    teamB = json['team_b'];
    teamAScore = json['team_a_score'];
    odds1xbet = json['1xbet_odds_avg'];
    oddsBetsafe = json['betsafe_odds_avg'];
    oddsBetsson = json['betsson_odds_avg'];
    likesCount = json['likes_count'];
    starsCount = json['stars_count'];
    viewsCount = json['views_count'];
    sharesCount = json['shares_count'];
    channels = json['channels'];
    stadium = json['stadium'];
    referee = json['referee'];
    refereeAvatar = json['referee_avatar'];
    refereeStats = json['referee_stats'];
    teamAImage = json['team_a_image'];
    teamBImage = json['team_b_image'];
    redCardMedia = json['red_card_media'];
    yellowCardMedia = json['yellow_card_media'];
    teamAStats = json['team_a_stats'];
    teamBStats = json['team_b_stats'];
    id = json['id'];
  }



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'teamA': teamA,
      'teamB': teamB,
      'teamAScore': teamAScore,
      'odds1xbet': odds1xbet,
      'oddsBetsafe': oddsBetsafe,
      'oddsBetsson': oddsBetsson,
      'likesCount': likesCount,
      'starsCount': starsCount,
      'viewsCount': viewsCount,
      'sharesCount': sharesCount,
      'channels': channels,
      'stadium': stadium,
      'referee': referee,
      'refereeAvatar': refereeAvatar,
      'refereeStats': refereeStats,
      'teamAImage': teamAImage,
      'teamBImage': teamBImage,
      'redCardMedia': redCardMedia,
      'yellowCardMedia': yellowCardMedia,
      'teamAStats': teamAStats,
      'teamBStats': teamBStats,
      'id': id,
    };
  }

  factory MatchModel.fromMap(Map<String, dynamic> map) {
    return MatchModel(
      date: map['date'] ?? '',
      teamA: map['teamA'] ?? '',
      teamB: map['teamB'] ?? '',
      teamAScore: map['teamAScore'] ?? '',
      odds1xbet: map['odds1xbet'] ?? '',
      oddsBetsafe: map['oddsBetsafe'] ?? '',
      oddsBetsson: map['oddsBetsson'] ?? '',
      likesCount: map['likesCount'] ?? '',
      starsCount: map['starsCount'] ?? '',
      viewsCount: map['viewsCount'] ?? '',
      sharesCount: map['sharesCount'] ?? '',
      channels: map['channels'] ?? '',
      stadium: map['stadium'] ?? '',
      referee: map['referee'] ?? '',
      refereeAvatar: map['refereeAvatar'] ?? '',
      refereeStats: map['refereeStats'] ?? '',
      teamAImage: map['teamAImage'] ?? '',
      teamBImage: map['teamBImage'] ?? '',
      redCardMedia: map['redCardMedia'] ?? '',
      yellowCardMedia: map['yellowCardMedia'] ?? '',
      teamAStats: map['teamAStats'] ?? '',
      teamBStats: map['teamBStats'] ?? '',
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  //factory MatchModel.fromJson(String source) => MatchModel.fromMap(json.decode(source) as Map<String, dynamic>);


  //   MatchModel.fromJson(Map<String, dynamic> json) {
  //   date = json['date'];
  //   teamA = json['team_a'];
  //   teamB = json['team_b'];
  //   teamAScore = json['team_a_score'];
  //   odds1xbet = json['1xbet_odds_avg'];
  //   oddsBetsafe = json['betsafe_odds_avg'];
  //   oddsBetsson = json['betsson_odds_avg'];
  //   likesCount = json['likes_count'];
  //   starsCount = json['stars_count'];
  //   viewsCount = json['views_count'];
  //   sharesCount = json['shares_count'];
  //   channels = json['channels'];
  //   stadium = json['stadium'];
  //   referee = json['referee'];
  //   refereeAvatar = json['referee_avatar'];
  //   refereeStats = json['referee_stats'];
  //   teamAImage = json['team_a_image'];
  //   teamBImage = json['team_b_image'];
  //   redCardMedia = json['red_card_media'];
  //   yellowCardMedia = json['yellow_card_media'];
  //   teamAStats = json['team_a_stats'];
  //   teamBStats = json['team_b_stats'];
  //   id = json['id'];
  // }
}
