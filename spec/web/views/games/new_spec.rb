require 'spec_helper'
require_relative '../../../../apps/web/views/games/new'

describe Web::Views::Games::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/games/new.html.erb') }
  let(:view)      { Web::Views::Games::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
