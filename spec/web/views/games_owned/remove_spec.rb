require 'spec_helper'
require_relative '../../../../apps/web/views/games_owned/remove'

describe Web::Views::GamesOwned::Remove do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/games_owned/remove.html.erb') }
  let(:view)      { Web::Views::GamesOwned::Remove.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
