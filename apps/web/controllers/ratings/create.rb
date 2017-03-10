module Web::Controllers::Ratings
  class Create
    include Web::Action

    params do
      required(:rating).schema do
        required(:rating).filled(:int?, included_in?: 1..5)
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
          repo.create(rating: params[:rating][:rating], user_id: uid, game_id: game_id)
          flash[:errors] = nil
        else
          flash[:errors] = "Incorrect Game or User ID"
        end
      else
        flash[:errors] = "Did you enter a rating between 1 and 5?"
      end
        redirect_to(request.referrer)
    end
  end
end
