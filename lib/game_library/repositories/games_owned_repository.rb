class GamesOwnedRepository < Hanami::Repository

  def find_user_games_owned(user)
    games_owneds
      .where(user_id: user.id)
      .to_a
  end

  def find_game_owned_by_user(user_id, game_id)
    games_owneds
      .where(user_id: user_id, game_id: game_id)
      .one
  end

end
