class RatingRepository < Hanami::Repository

  def find_ratings_for_game(game)
    ratings
      .where(game_id: game.id)
      .to_a
  end

  def get_avg_for_game(game)
    scores = find_ratings_for_game(game)
    sum = 0.0
    if scores.any?
      scores.each do |rating|
        sum += rating.rating
      end
      (sum / scores.length).round 1
    else
      nil
    end
  end

  def find_user_rating_for_game(user_id, game_id)
    ratings
      .where(game_id: game_id, user_id: user_id)
      .one
  end

end
