module Web::Controllers::GamesOwned
  class Create
    include Web::Action

    params do
      required(:games_owned).schema do
        required(:game_id).filled(:int?)
      end
    end

    def call(params)
      if params.valid?
        game_id = params[:games_owned][:game_id]
        user = UserRepository.new.find_user_by_name(session[:username])
        last_game = GameRepository.new.last.id
        uid = nil
        if (user)
          uid = user.id
        end
        if (game_id <= last_game && uid)
          repo = GamesOwnedRepository.new
          repo.create(game_id: game_id, user_id: uid)
          flash[:errors] = nil
        else
          flash[:errors] = 'Not a valid game identifier'
        end
      else
        flash[:errors] = "Did you add a game identifier?"
      end
        redirect_to(request.referrer)
    end
  end
end
