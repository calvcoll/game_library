module Web::Controllers::Ratings
  class Delete
    include Web::Action

    params do
      required(:rating).schema do
        required(:game_id).filled(:int?)
      end
    end

    def call(params)
      if params.valid?
        game_id = params[:rating][:game_id]
        user = UserRepository.new.find_user_by_name(session[:username])
        last_game = GameRepository.new.last.id
        uid = nil
        if (user)
          uid = user.id
        end
        if (game_id <= last_game && uid)
          repo = RatingRepository.new
          rating = repo.find_user_rating_for_game(uid, game_id)
          repo.delete(rating.id)
          flash[:errors] = nil
        else
          flash[:errors] = 'Not a valid game identifier'
        end
      else
        flash[:errors] = "Did you add a rating identifier?"
      end
        redirect_to(request.referrer)
    end
  end
end
