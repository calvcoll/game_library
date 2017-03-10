require 'spec_helper'
require_relative '../../../../apps/web/controllers/ratings/delete'

describe Web::Controllers::Ratings::Delete do
  let(:action) { Web::Controllers::Ratings::Delete.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
