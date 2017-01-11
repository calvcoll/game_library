require 'spec_helper'
require_relative '../../../../apps/web/controllers/games/index'

describe Web::Controllers::Games::Index do
  let(:action) { Web::Controllers::Games::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
