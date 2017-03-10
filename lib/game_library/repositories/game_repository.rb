class GameRepository < Hanami::Repository

  associations do
    has_many :games_owneds
  end

  def find_game_by_name(game_name)
    games
      .where(title: game_name)
      .one
  end

  def find_games_by_user(user)
    repo = GamesOwnedRepository.new
    owned = repo.find_user_games_owned(user)
    returned = []
    owned.each do |game_owned|
      game = games
        .where(id: game_owned.game_id)
        .one
      returned.push(game)
    end
    returned
  end

end
