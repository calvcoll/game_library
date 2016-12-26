require 'spec_helper'
require_relative '../../../../apps/web/views/logout/logout'

describe Web::Views::Logout::Logout do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/logout/logout.html.erb') }
  let(:view)      { Web::Views::Logout::Logout.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
