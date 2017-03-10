require 'spec_helper'
require_relative '../../../../apps/web/views/ratings/delete'

describe Web::Views::Ratings::Delete do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/ratings/delete.html.erb') }
  let(:view)      { Web::Views::Ratings::Delete.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
