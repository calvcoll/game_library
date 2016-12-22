module Web::Controllers::Session
  class Signup
    include Web::Action

    def call(params)
      # session[:user] = nil
    end
  end
end
