require 'spec_helper'
require_relative '../../../../apps/web/controllers/games/new'

describe Web::Controllers::Games::New do
  let(:action) { Web::Controllers::Games::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
