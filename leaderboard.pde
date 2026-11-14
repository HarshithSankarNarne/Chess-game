class LeaderBoard {
  int easyScore;
  int medScore;
  int hardScore;
  int totalXP;
  String filename = "scores.txt";

  LeaderBoard() {
    easyScore = 0;
    medScore = 0;
    hardScore = 0;
    totalXP = 0;

    String[] lines = loadStrings(filename);
    if (lines == null || lines.length < 4) {
      saveScores(0, 0, 0, 0);
    } else {
      loadScores();
    }
  }

  void loadScores() {
    String[] lines = loadStrings(filename);
    if (lines != null && lines.length >= 4) {
      easyScore = int(lines[0].trim());
      medScore  = int(lines[1].trim());
      hardScore = int(lines[2].trim());
      totalXP   = int(lines[3].trim());
    }
  }

  void saveScores(int e, int m, int h, int xp) {
    easyScore = e;
    medScore = m;
    hardScore = h;
    totalXP = xp;

    String[] data = {
      str(easyScore),
      str(medScore),
      str(hardScore),
      str(totalXP)
    };
    saveStrings("data/" + filename, data);
  }
}
