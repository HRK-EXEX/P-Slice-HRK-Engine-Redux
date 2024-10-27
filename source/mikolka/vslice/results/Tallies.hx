package mikolka.vslice.results;

//? V-slice utility classes (P-Slice exclusive)
@:forward
abstract Tallies(RawTallies)
{
  public function new()
  {
    this =
      {
        combo: 0,
        missed: 0,
        shit: 0,
        bad: 0,
        good: 0,
        sick: 0,
        totalNotes: 0,
        totalNotesHit: 0,
        maxCombo: 0,
        score: 0,
        isNewHighscore: false
      }
  }
}

/**
 * A structure object containing the data for highscore tallies.
 */
typedef RawTallies =
{
  var combo:Int;

  /**
   * How many notes you let scroll by.
   */
  var missed:Int;

  var shit:Int;
  var bad:Int;
  var good:Int;
  var sick:Int;
  var maxCombo:Int;

  var score:Int;

  var isNewHighscore:Bool;

  /**
   * How many notes total that you hit. (NOT how many notes total in the song!)
   */
  var totalNotesHit:Int;

  /**
   * How many notes in the current chart
   */
  var totalNotes:Int;
}
typedef SaveScoreData =
{
  /**
   * The score achieved.
   */
  var score:Float;
  var accPoints:Float; // Hit points. Divide by all notes to get accuracy

  var sick:Float;
  var good:Float;
  var bad:Float;
  var shit:Float;
  var missed:Float;
  var combo:Float;
  var maxCombo:Float;
  var totalNotesHit:Float;
  var totalNotes:Float;
}