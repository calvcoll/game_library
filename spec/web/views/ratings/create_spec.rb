require 'spec_helper'
require_relative '../../../../apps/web/views/ratings/create'

describe Web::Views::Ratings::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/ratings/create.html.erb') }
  let(:view)      { Web::Views::Ratings::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
