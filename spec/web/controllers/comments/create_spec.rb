require 'spec_helper'
require_relative '../../../../apps/web/controllers/comments/create'

describe Web::Controllers::Comments::Create do
  let(:action) { Web::Controllers::Comments::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
