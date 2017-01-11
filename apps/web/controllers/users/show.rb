module Web::Controllers::Users
  class Show
    include Web::Action

    expose :user
    expose :games

    def call(params)
      user_repo = UserRepository.new
      @user = user_repo.find_user_by_name(params[:id])
      game_repo = GameRepository.new
      @games = game_repo.find_games_by_user(user)
    end
  end
end
