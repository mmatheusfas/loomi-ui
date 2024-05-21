import 'package:flutter/material.dart';
import 'package:loomi_ui/src/widgets/home/match_summary/live_bets_odds_viewer.dart';
import 'package:loomi_ui/src/widgets/home/match_summary/live_indicator.dart';
import 'package:loomi_ui/src/widgets/home/match_summary/live_timeline_viewer.dart';
import 'package:loomi_ui/src/widgets/home/match_summary/score_viewer.dart';
import 'package:loomi_ui/src/widgets/home/match_summary/team_info.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_fonts.dart';
import '../date_viewer.dart';

class MatchSummaryCard extends StatelessWidget {
  const MatchSummaryCard({
    super.key,
    required this.teamAImagePath,
    required this.teamAName,
    required this.teamBImagePath,
    required this.teamBName,
    required this.xBetImagePath,
    required this.xBetOdd,
    required this.betSafeImagePath,
    required this.betSafeOdd,
    required this.betssonImagePath,
    required this.betssonOdd,
    required this.teamAScore,
    required this.teamBScore,
  });

  final String teamAImagePath;
  final String teamAName;
  final String teamBImagePath;
  final String teamBName;
  final int teamAScore;
  final int teamBScore;
  final String xBetImagePath;
  final int xBetOdd;
  final String betSafeImagePath;
  final int betSafeOdd;
  final String betssonImagePath;
  final int betssonOdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 402,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(36),
        border: Border.all(color: AppColors.lightGrey),
        boxShadow: const [
          BoxShadow(color: AppColors.lightGrey, blurRadius: 5),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Match info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamInfo(teamImagePath: teamAImagePath, teamName: teamAName),
              const SizedBox(width: 20),
              const Column(
                children: [
                  LiveIndicator(),
                  SizedBox(height: 12),
                  DateViewer(isSelected: false, label: "60'", fontSize: 16)
                ],
              ),
              const SizedBox(width: 20),
              TeamInfo(teamImagePath: teamBImagePath, teamName: teamBName)
            ],
          ),
          //Placar
          ScoreViewer(teamAScore: teamAScore, teamBScore: teamBScore), //Live timeline
          const LiveTimelineViewer(),
          //Bets info
          LiveBetsOddsViewer(
            xBetImagePath: xBetImagePath,
            xBetOdd: xBetOdd,
            betSafeImagePath: betSafeImagePath,
            betSafeOdd: betSafeOdd,
            betssonImagePath: betssonImagePath,
            betssonOdd: betssonOdd,
          ),
          const Divider(color: AppColors.lightGrey),
          Text("Ver mais", style: AppFonts.montserratSemiBold(12))
        ],
      ),
    );
  }
}
