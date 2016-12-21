require 'spec_helper'
require_relative '../../../../apps/web/views/session/login'

describe Web::Views::Session::Login do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/session/login.html.erb') }
  let(:view)      { Web::Views::Session::Login.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
