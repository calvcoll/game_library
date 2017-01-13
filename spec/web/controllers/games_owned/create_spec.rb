require 'spec_helper'
require_relative '../../../../apps/web/controllers/games_owned/create'

describe Web::Controllers::GamesOwned::Create do
  let(:action) { Web::Controllers::GamesOwned::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
