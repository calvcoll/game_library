class GamesOwnedRepository < Hanami::Repository

  def find_user_games_owned(user)
    games_owneds
      .where(user_id: user.id)
  end

end
