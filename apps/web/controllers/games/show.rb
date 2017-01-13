module Web::Controllers::Games
  class Show
    include Web::Action

    expose :game
    expose :user
    expose :user_repo
    expose :comments

    def call(params)
      game_repo = GameRepository.new
      @game = game_repo.find(params[:id])
      comments_repo = CommentRepository.new
      @comments = comments_repo.find_comments_for_game(game)
      @user_repo = UserRepository.new
      if (session[:username])
        @user = user_repo.find_user_by_name(session[:username])
      end
    end
  end
end
