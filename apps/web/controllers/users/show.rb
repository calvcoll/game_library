module Web::Controllers::Users
  class Show
    include Web::Action

    expose :user

    def call(params)
      repo = UserRepository.new
      @user = repo.find_user_by_name(params[:id])
      # @games = GameRepository.find_games_by_user(user)
    end
  end
end
