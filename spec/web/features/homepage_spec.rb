require 'features_helper'

describe 'Visit Homepage' do
  it 'is working' do
    visit '/'

    page.body.must_include("Game Library")
  end

  it 'has a login link' do
    visit '/'

    page.body.must_include("Login")
  end
end
