module Web::Controllers::Logout
  class Logout
    include Web::Action

    def call(params)
      if session[:username]
        session["username"] = nil
      end
      redirect_to routes.root_path
    end
  end
end
