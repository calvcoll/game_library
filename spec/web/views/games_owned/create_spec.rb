require 'spec_helper'
require_relative '../../../../apps/web/views/games_owned/create'

describe Web::Views::GamesOwned::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/games_owned/create.html.erb') }
  let(:view)      { Web::Views::GamesOwned::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
