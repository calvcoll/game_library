require 'spec_helper'
require_relative '../../../../apps/web/controllers/games_owned/remove'

describe Web::Controllers::GamesOwned::Remove do
  let(:action) { Web::Controllers::GamesOwned::Remove.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
