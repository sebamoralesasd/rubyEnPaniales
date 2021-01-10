=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores()
    return @scores
  end

  def latest()
    return @scores.last
  end

  def personal_best()
    return @scores.max
  end

  def personal_top_three()
    return @scores.sort { |a,b| b <=> a}.take(3)
  end

  def latest_is_personal_best?()
    return self.latest == self.personal_best
  end

end