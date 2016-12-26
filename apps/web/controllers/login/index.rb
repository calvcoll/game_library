module Web::Controllers::Login
  class Index
    include Web::Action

    expose :flash_errors

    def call(params)
      @flash_errors = flash[:errors]
      if @flash_errors
        Hanami::Logger.new.info flash[:errors]
      end
    end

  end
end
