// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MatchModel {
  late String date;
  late String teamA;
  late String teamB;
  late int teamAScore;
  late int teamBScore;
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
    required this.teamBScore,
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
    teamBScore = json['team_b_score'];
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
      'teamBScore': teamBScore,
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
      teamA: map['team_a'] ?? '',
      teamB: map['team_b'] ?? '',
      teamAScore: map['team_a_score'] ?? 0,
      teamBScore: map['team_b_score'] ?? 0,
      odds1xbet: map['odds1xbet'] ?? 0,
      oddsBetsafe: map['oddsBetsafe'] ?? 0,
      oddsBetsson: map['oddsBetsson'] ?? 0,
      likesCount: map['likesCount'] ?? 0,
      starsCount: map['starsCount'] ?? 0,
      viewsCount: map['viewsCount'] ?? 0,
      sharesCount: map['sharesCount'] ?? 0,
      channels: map['channels'] ?? '',
      stadium: map['stadium'] ?? '',
      referee: map['referee'] ?? '',
      refereeAvatar: map['refereeAvatar'] ?? '',
      refereeStats: map['refereeStats'] ?? '',
      teamAImage: map['team_a_image'] ?? '',
      teamBImage: map['team_b_image'] ?? '',
      redCardMedia: map['redCardMedia'] ?? 0,
      yellowCardMedia: map['yellowCardMedia'] ?? 0,
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
